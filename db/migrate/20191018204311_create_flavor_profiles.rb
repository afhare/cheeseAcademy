class CreateFlavorProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :flavor_profile do |t|
      t.references :cheese, foreign_key: true
      t.references :flavor, foreign_key: true

      t.timestamps
    end
  end
end
