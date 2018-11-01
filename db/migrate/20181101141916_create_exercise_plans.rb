class CreateExercisePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :exercise_plans do |t|
      t.references :plan, index: true, foreign_key: true
      t.references :exercise, index: true, foreign_key: true
      t.integer :number_day
      t.string  :weight
      t.integer :repetition
      t.integer :rest_time
      t.integer :number_series
      
      t.timestamps
    end
  end
end
