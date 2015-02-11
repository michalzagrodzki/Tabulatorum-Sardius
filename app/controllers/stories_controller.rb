class StoriesController < ApplicationController

  # function for showing specific story
  def show
    @story = Story.find(params[:id])
  end

  #for this time, other funcions - new, update, delete - are disabled
end
