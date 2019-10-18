class CreateCheeseMilks < ActiveRecord::Migration[5.2]
  def change
    create_table :cheese_milks do |t|
      t.references :cheese, foreign_key: true
      t.references :milk, foreign_key: true

      t.timestamps
    end
  end
end
