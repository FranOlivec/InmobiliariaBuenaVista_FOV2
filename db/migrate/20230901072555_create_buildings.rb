class CreateBuildings < ActiveRecord::Migration[7.0]
  def change
    create_table :buildings do |t|
      t.string :name
      t.string :adress
      t.references :commune, null: false, foreign_key: true

      t.timestamps
    end
  end
end
