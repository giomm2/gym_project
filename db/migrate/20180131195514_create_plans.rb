class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.references :objective, index: true, foreign_key: true
      t.datetime :start_date
      t.datetime :finish_date
      t.integer :number_of_weeks
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
