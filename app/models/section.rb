class Section < ActiveRecord::Base

  belongs_to :chapter
  has_many :lessons

  def next
    last_section_id = Section.maximum(:id)
    if self.id < last_section_id
      next_section_id = self.id + 1
    else
      next_section_id = self.id
    end
  end

  def previous
    first_section_id = Section.minimum(:id)
    if self.id > first_section_id
      previous_section_id = self.id - 1
    else
      previous_section_id = self.id
    end
  end

end
