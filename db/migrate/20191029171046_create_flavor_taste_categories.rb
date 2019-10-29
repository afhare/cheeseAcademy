class CreateFlavorTasteCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :flavor_taste_categories do |t|
      t.references :flavor, foreign_key: true
      t.references :taste, foreign_key: true

      t.timestamps
    end
  end
end
