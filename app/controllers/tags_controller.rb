class TagsController < ApplicationController

  # restricting elementes which will be fetched:
  before_action :fetch_element, only: [:show, :index]

  expose(:tags)
  expose(:tag)

  # function for listing all tags
  def index
  end

  # function for listing specific tag by it's param
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

  # private method for fetching elements from model
  private

  def fetch_element
    tags = Tag.all
  end

end
