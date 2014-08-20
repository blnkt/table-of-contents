class Chapter < ActiveRecord::Base

  has_many :sections

  def next
    last_chapter_id = Chapter.maximum(:id)
    if self.id < last_chapter_id
      next_chapter_id = self.id + 1
    else
      next_chapter_id = self.id
    end
  end

  def previous
    first_chapter_id = Chapter.minimum(:id)
    if self.id > first_chapter_id
      previous_chapter_id = self.id - 1
    else
      previous_chapter_id = self.id
    end
  end
end
