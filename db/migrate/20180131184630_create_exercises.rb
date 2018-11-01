class CreateExercises < ActiveRecord::Migration[5.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.text :description
      t.boolean :active, default: true
      t.string :url_video

      t.timestamps
    end
  end
end
