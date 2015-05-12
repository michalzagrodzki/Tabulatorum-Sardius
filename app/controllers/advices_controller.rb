class AdvicesController < ApplicationController

  expose(:advice)
  expose(:story)
  expose(:picture)
  expose_decorated(:pictures, ancestor: :advice)

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index ]

  def create
    self.advice = Advice.new(advice_params)

    if advice.save
      story.advices << advice
      redirect_to story, notice: 'Chapter added.'
    else
      redirect_to story
    end
  end

  def edit
    if user_signed_in?

      # Query list of pictures with story_id of certain story
      @pictures_options = story.pictures.map{|u| [ u.title, u.link ] }

      self.advice = Advice.find(params[:id])
    else
      redirect_to story_path(advice.story_id)
    end
  end

  def update
    if user_signed_in?
      if advice.update(advice_params)
        redirect_to story_path(advice.story_id), notice: 'Advice was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    if user_signed_in?
      advice.destroy
      redirect_to :back, notice: 'Advice was successfully destroyed.'
    else
      redirect_to story_path(advice.story_id)
    end
  end

  private

  def advice_params
    params.require(:advice).permit(:id, :text,
                                    pictures_attributes: [:id, :link, :chapter_id, :story_id ] )
  end
  
end
