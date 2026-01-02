class AddFoodItems < ActiveRecord::Migration[7.1]
  def change
    create_table :food_items do |t|
      t.belongs_to :service, null: false, foreign_key: true

      t.string :name, null: false
      t.decimal :serving_size, precision: 8, scale: 2
      t.string  :serving_unit
      t.integer :calories
      t.integer :calories_from_fat
      t.decimal :protein_g,       precision: 6, scale: 2
      t.decimal :carbs_g,         precision: 6, scale: 2
      t.decimal :fat_g,           precision: 6, scale: 2
      t.decimal :saturated_fat_g, precision: 6, scale: 2
      t.decimal :fiber_g,         precision: 6, scale: 2
      t.decimal :sugar_g,         precision: 6, scale: 2
      t.integer :cholesterol_mg
      t.integer :sodium_mg

      t.timestamps
    end

    add_index :food_items, [:service_id, :name], unique: true
  end
end
