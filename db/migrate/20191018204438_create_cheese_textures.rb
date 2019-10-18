class CreateCheeseTextures < ActiveRecord::Migration[5.2]
  def change
    create_table :cheese_textures do |t|
      t.references :cheese, foreign_key: true
      t.references :texture, foreign_key: true

      t.timestamps
    end
  end
end
