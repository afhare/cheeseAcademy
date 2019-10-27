class CreateCheeses < ActiveRecord::Migration[5.2]
  def change
    create_table :cheeses do |t|
      t.string :name
      t.string :creamery
      t.string :origin
      t.string :notes
      t.string :rind
      t.string :milk
      t.string :texture
      t.integer :rating

      t.timestamps
    end
  end
end
