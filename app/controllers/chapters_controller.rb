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
end
