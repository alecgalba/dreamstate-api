class CreateDreams < ActiveRecord::Migration[5.1]
  def change
    create_table :dreams do |t|
      t.string :name
      t.string :description
      t.string :sleep_hours
      t.integer :likes

      t.timestamps
    end
  end
end
