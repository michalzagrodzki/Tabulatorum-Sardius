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
      marker.infowindow story.main_page_image
      marker.infowindow story_path(story)
      marker.infowindow story.updated_at

      # Specify information shown in expanded infowindow
      marker.json({
                      # name of story for marker/infowindow
                      title: story.name,
                      # id picture of story
                      image: story.main_page_image,
                      #link to story
                      link: story_path(story),
                      #date of story
                      updated: story.updated_at
                  })
    end
  end

  private

  def fetch_elements
    story = Story.all
  end

end
