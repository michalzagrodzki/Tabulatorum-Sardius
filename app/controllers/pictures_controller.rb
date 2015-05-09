class PicturesController < ApplicationController

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index ]

  expose(:pictures)
  expose(:picture)
  expose(:story)

  # restricing elements, which can be accessed
  before_action :fetch_picture, only: [ :index ]


  def index
  end

  def new
  end

  def create
  end

  # private method for fetching elements to show
  private

  def fetch_picture
    pictures = Picture.all
  end

end
