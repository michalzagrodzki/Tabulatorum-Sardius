class AdvicesController < ApplicationController

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index ]

  # temporarily put index - test later if it is necessary
  def index
  end

end
