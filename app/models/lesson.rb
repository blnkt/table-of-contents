class Lesson < ActiveRecord::Base

  belongs_to :section

  def next
    last_lesson_id = Lesson.maximum(:id)
    if self.id < last_lesson_id
      next_lesson_id = self.id + 1
    else
      next_lesson_id = self.id
    end
  end

  def previous
    first_lesson_id = Lesson.minimum(:id)
    if self.id > first_lesson_id
      previous_lesson_id = self.id - 1
    else
      previous_lesson_id = self.id
    end
  end

end

