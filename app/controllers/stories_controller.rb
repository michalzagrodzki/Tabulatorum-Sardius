class StoriesController < ApplicationController

  # restricing elements, which can be accessed
  before_action :fetch_element, only: [ :show, :index ]

  # function for listing all stories
  def index
    @stories = Story.all
  end

  # function for showing specific story
  def show
    @story = Story.find(params[:id])
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

  def fetch_element
    @stories = Story.all
  end

end
