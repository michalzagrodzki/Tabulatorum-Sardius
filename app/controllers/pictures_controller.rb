class PicturesController < ApplicationController

  expose(:pictures)
  expose(:picture)
  expose(:story)

  # restricing elements, which can be accessed
  before_action :fetch_picture, only: [ :index ]


  def index
  end

  # private method for fetching elements to show
  private

  def fetch_picture
    pictures = Picture.all
  end

end
