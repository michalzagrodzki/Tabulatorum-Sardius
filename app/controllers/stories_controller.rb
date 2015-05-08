class StoriesController < ApplicationController

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index, :show ]

  # restricing elements, which can be accessed
  before_action :fetch_story, only: [ :show, :index ]

  # decent_exposure
  expose(:stories)
  expose(:story)
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

  # for this time, other functions - new, update, delete - are not defined
  # unused function
  def new
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

  # private method for fetching elements to show
  private

  def fetch_story
    stories = Story.all
  end

end
