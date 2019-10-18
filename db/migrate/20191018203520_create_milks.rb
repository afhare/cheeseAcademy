class CreateMilks < ActiveRecord::Migration[5.2]
  def change
    create_table :milks do |t|
      t.string :kind

      t.timestamps
    end
  end
end
