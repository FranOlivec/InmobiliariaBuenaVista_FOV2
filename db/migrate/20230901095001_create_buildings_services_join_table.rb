class CreateBuildingsServicesJoinTable < ActiveRecord::Migration[7.0]
  def change
      create_table :buildings_services, id: false do |t|
        t.bigint :building_id, null: false
        t.bigint :service_id, null: false
      end

      add_foreign_key :buildings_services, :buildings
      add_foreign_key :buildings_services, :services
  end
end

