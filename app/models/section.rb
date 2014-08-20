class Section < ActiveRecord::Base

  belongs_to :chapter
  has_many :lessons

end
