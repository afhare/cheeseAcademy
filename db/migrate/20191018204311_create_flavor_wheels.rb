class CreateFlavorWheels < ActiveRecord::Migration[5.2]
  def change
    create_table :flavor_wheels do |t|
      t.references :cheese, foreign_key: true
      t.references :flavor, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
