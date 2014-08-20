class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.belongs_to :section
    end

    create_table :sections do |t|
      t.string :name
      t.belongs_to :chapter
    end

    create_table :chapters do |t|
      t.string :name
    end
  end
end
