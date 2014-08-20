class LessonsController < ApplicationController

  def index
    @lessons = Lesson.all
    render('lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    @section = Section.find(@lesson.section_id)
    @chapter = Chapter.find(@section.chapter_id)
    render('lessons/show.html.erb')
  end
end
