class SectionsController < ApplicationController

  def index
    @sections = Section.all
    render('sections/index.html.erb')
  end

  def show
    @section = Section.find(params[:id])
    @lessons = @section.lessons
    render('sections/show.html.erb')
  end

end
