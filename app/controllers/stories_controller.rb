class StoriesController < ApplicationController

  # function for listing all stories
  def index
    @stories = Story.all
  end

  # function for showing specific story
  def show
    @story = Story.find(params[:id])
  end

  #for this time, other funcions - new, update, delete - are disabled
end
