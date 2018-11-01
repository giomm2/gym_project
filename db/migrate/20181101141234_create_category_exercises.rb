class CreateCategoryExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :category_exercises do |t|
      t.references :exercise, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
