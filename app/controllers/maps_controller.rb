class MapsController < ApplicationController

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index ]

  #fetch only index
  before_action :fetch_elements, only: [ :index ]

  expose(:stories)
  expose(:mapshash)
  def index
    stories = Story.all
    # variables passed to Google Maps
    @mapshash = Gmaps4rails.build_markers(stories) do |story, marker|
      marker.lat story.latitude
      marker.lng story.longitude
      # Specify information shown in marker
      marker.infowindow story.name

      # Specify information shown in expanded infowindow
      marker.json({
                      # name of story for marker/infowindow
                      title: story.name,
                      # value for showing in infowindow
                      lat: story.latitude
                  })
    end
  end

  private

  def fetch_elements
    story = Story.all
  end

end
