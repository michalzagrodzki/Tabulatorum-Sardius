class WelcomeController < ApplicationController

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index ]

  expose(:stories)

  # function for showing all stories
  def index
    # description of @stories is not necessary - it is handled by decent_exposure
  end

end
