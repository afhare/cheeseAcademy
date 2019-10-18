class CreateTextures < ActiveRecord::Migration[5.2]
  def change
    create_table :textures do |t|
      t.string :kind

      t.timestamps
    end
  end
end
