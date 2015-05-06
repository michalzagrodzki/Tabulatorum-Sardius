class StoriesController < ApplicationController

  # restricing elements, which can be accessed
  before_action :fetch_story, only: [ :show, :index ]
  before_action :fetch_picture, only: [ :index, :show ]

  # decent_exposure
  expose(:stories)
  expose(:story)
  expose_decorated(:pictures, ancestor: :story)

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

  def fetch_picture
    pictures = Picture.all
  end

end
