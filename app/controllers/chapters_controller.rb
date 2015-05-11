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
      render action: 'new'
    end
  end

  private
  def chapter_params
    params.require(:chapter).permit(:id, :text)
  end
end
