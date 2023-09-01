class CreateDepartments < ActiveRecord::Migration[7.0]
  def change
    create_table :departments do |t|
      t.integer :number
      t.integer :price
      t.references :type, null: false, foreign_key: true
      t.references :building, null: false, foreign_key: true
      t.references :status, null: false, foreign_key: true
      t.references :modality, null: false, foreign_key: true

      t.timestamps
    end
  end
end
