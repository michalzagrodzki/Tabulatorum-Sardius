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

    # Function for GoogleMaps - showing pictures related to single story
    @single_story = Story.find(params[:id])
    # variables passed to Google Maps
    @hash = Gmaps4rails.build_markers(@single_story.pictures) do |picture, marker|
      marker.lat picture.latitude
      marker.lng picture.longitude
      # Specify information shown in marker
      marker.infowindow picture.link

      # Specify information shown in expanded infowindow
      marker.json({
                      # name of story for marker/infowindow
                      title: picture.title,
                      # value for showing in infowindow
                      lat: picture.latitude
                  })
    end

  end

  def new
    1.times { story.chapters.build }
    1.times { story.advices.build }
  end

  def create
    self.story = Story.new(story_params)
      if story.save
        redirect_to welcome_index_path, notice: 'Story added.'
      else
        render action: 'new'
      end
  end

  # unused function
  def edit
  end

  # unused function
  def update
  end

  # unused function
  def destroy
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
        advices_attributes: [ :id, :text, :story_id, :_destroy ] )
  end

end
