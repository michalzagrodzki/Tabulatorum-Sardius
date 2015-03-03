class StoriesController < ApplicationController

  # restricing elements, which can be accessed
  before_action :fetch_element, only: [ :show, :index ]

  # function for listing all stories and showing search results
  def index

    # function search of stories - when find matches something - show it, otherwise - show all
    if params[:search]
      @stories = Story.search(params[:search]).order('updated_at desc')
    else
      @stories = Story.order('updated_at desc')
    end

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
