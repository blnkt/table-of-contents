class ChaptersController < ApplicationController

  def index
    @chapters = Chapter.all
    render('chapters/index.html.erb')
  end

  def show
    @chapter = Chapter.find(params[:id])
    @sections = @chapter.sections
    render('chapters/show.html.erb')

  end

  # def next
  #   @chapter = Chapter.find(params[:id])
  #   last_chapter = Chapter.maximum(:id)
  #   @next_chapter_id = @chapter.id
  #   if @chapter.id < last_chapter
  #     @next_chapter_id = @chapter.id + 1
  #   end
  #   render('chapters/show.html.erb')
  # end
end
