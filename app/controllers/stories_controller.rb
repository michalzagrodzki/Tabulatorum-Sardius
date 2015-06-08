class StoriesController < ApplicationController

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index, :show ]

  # restricting elements, which can be accessed
  before_action :fetch_story, only: [ :show, :index, :new, :create ]

  # decent_exposure
  expose(:stories)
  expose(:story)
  expose(:chapter) { Chapter.new }
  expose(:advice) { Advice.new }
  expose_decorated(:chapters, ancestor: :story)
  expose_decorated(:pictures, ancestor: :story)
  expose_decorated(:advices, ancestor: :story)

  ### Inspect this later
  expose(:stories_search) {Story.search(params[:search]).order('updated_at desc') }

  # function for listing all stories and showing search results
  def index

    ### Inspect this later
    # function search of stories - when find matches something - show it, otherwise - show all
    if params[:search]
      stories_search = Story.search(params[:search]).order('updated_at desc')
    else
      stories_search = Story.order('updated_at desc')
    end

  end

  # function for showing specific story
  def show

    # number of forms for pictures within chapter or advice
    3.times { chapter.pictures.build }
    3.times { advice.pictures.build }

    # Function for GoogleMaps - showing pictures related to single story
    @single_story = Story.find(params[:id])
    # variables passed to Google Maps
    @hash = Gmaps4rails.build_markers(@single_story.pictures) do |picture, marker|
      marker.lat picture.latitude
      marker.lng picture.longitude
      # Specify information shown in marker
      marker.infowindow picture.link
      marker.infowindow picture.title

      # Specify information shown in expanded infowindow
      marker.json({
                      # name of story for marker/infowindow
                      title: picture.title,
                      # value for showing in infowindow
                      picture: picture.link
                  })
    end

  end

  def new

    # number of forms for chapters, advices, pictures
    1.times { story.chapters.build }
    1.times { story.advices.build }
    12.times { story.pictures.build }

  end

  def create
    self.story = Story.new(story_params)
      if story.save
        redirect_to welcome_index_path, notice: 'Story added.'
      else
        render action: 'new'
      end
  end

  def edit
    if user_signed_in?
      self.story = Story.find(params[:id])
    else
      redirect_to story
    end
  end

  def update
    if user_signed_in?
      if story.update(story_params)
        redirect_to root_path, notice: 'Story was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to root_path
    end
  end

  # function for editing all pictures within one story
  def edit_pictures
    if user_signed_in?
      self.story = Story.find(params[:id])
    else
      redirect_to story
    end
  end

  # function for updating all pictures within one story
  def update_pictures
    if user_signed_in?
      if story.update(picture_manage_params)
        redirect_to story, notice: 'Pictures was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    if user_signed_in?
      story.destroy
      redirect_to root_path, notice: 'Story was successfully destroyed.'
    else
      redirect_to root_path
    end
  end


  private

  # private method for fetching elements to show
  def fetch_story
    stories = Story.all
  end

  # strong parameters for creating new story with data for children - chapters, advices
  def story_params
    params.require(:story).permit(
        :id, :name, :main_page_image, :header_image, :latitude, :longitude,
        chapters_attributes: [ :id, :text, :story_id, :_destroy ],
        advices_attributes: [ :id, :text, :story_id, :_destroy ],
        pictures_attributes: [ :id, :title, :description, :link, :location, :latitude, :longitude,
                              :chapter_id, :advice_id, :story_id ] )
  end

  # strong parameters for managing pictures withing one story
  def picture_manage_params
    params.require(:story).permit(
        pictures_attributes: [ :id, :title, :description, :link, :location, :latitude, :longitude,
                              :chapter_id, :advice_id, :story_id ] )
  end

end
