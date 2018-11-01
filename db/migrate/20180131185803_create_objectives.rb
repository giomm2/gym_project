class CreateObjectives < ActiveRecord::Migration[5.1]
  def change
    create_table :objectives do |t|
      t.string :name
      t.text :description
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
