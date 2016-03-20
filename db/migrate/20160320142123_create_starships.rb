class CreateStarships < ActiveRecord::Migration
  def change
    create_table :starships do |t|
      t.string :name
      t.string :manufacturer
      t.integer :hyperdrive_rating
      t.string :starship_class

      t.timestamps null: false
    end
  end
end
