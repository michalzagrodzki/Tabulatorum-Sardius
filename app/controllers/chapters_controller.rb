class ChaptersController < ApplicationController

  expose(:chapter)
  expose(:story)

  # set rights for guest and user
  before_action :authenticate_user!, except: [ :index ]

  # temporarily put index - test later if it is necessary
  def index
  end

  def new
  end

  def create
    self.chapter = Chapter.new(chapter_params)

    if chapter.save
      story.chapters << chapter
      redirect_to story, notice: 'Chapter added.'
    else
      redirect_to story
    end
  end

  def edit
    if user_signed_in?
      self.chapter = Chapter.find(params[:id])
    else
      redirect_to story
    end
  end

  def update
    if user_signed_in?
      if chapter.update(story_params)
        redirect_to story, notice: 'Chapter was successfully updated.'
      else
        render action: 'edit'
      end
    else
      redirect_to root_path
    end
  end

  def destroy
    if user_signed_in?
      chapter.destroy
      redirect_to story, notice: 'Chapter was successfully destroyed.'
    else
      redirect_to story
    end
  end

  private

  def chapter_params
    params.require(:chapter).permit(:id, :text,
                                    pictures_attributes: [:id, :link, :chapter_id, :story_id ] )
  end
end
