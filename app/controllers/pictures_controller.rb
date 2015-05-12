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
    self.picture = Picture.new(picture_params)
    if picture.save
      redirect_to welcome_index_path, notice: 'Pictures added.'
    else
      render action: 'new'
    end
  end

  def edit
    if user_signed_in?
      self.picture = Picture.find(params[:id])
    else
      redirect_to story_path(picture.story_id)
    end
  end

  def update
    if user_signed_in?
      if picture.update(picture_params)
        redirect_to story_path(picture.story_id), notice: 'Picture was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to story_path(picture.story_id)
    end
  end

  def destroy
    if user_signed_in?
      picture.destroy
      redirect_to :back, notice: 'Picture was successfully destroyed.'
    else
      redirect_to story
    end
  end

  # private method for fetching elements to show
  private

  def fetch_picture
    pictures = Picture.all
  end

  def picture_params
    params.require(:picture).permit(:id, :title, :description,
                                    :link, :story_id,
                                    :chapter_id, :advice_id,
                                    :latitude, :longitude )
  end

end
