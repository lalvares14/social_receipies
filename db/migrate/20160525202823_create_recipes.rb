class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :food_type
      t.string :preference
      t.integer :portions
      t.integer :cook_time
      t.string :difficulty
      t.text :ingredients
      t.text :instructions

      t.timestamps null: false
    end
  end
end
