class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :price
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
