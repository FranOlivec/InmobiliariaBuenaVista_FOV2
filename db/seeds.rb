# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

parking = Service.find_or_create_by!(name: 'Estacionamiento')
gym = Service.find_or_create_by!(name: 'Gymasio')
pool = Service.find_or_create_by!(name: 'Piscina')


['Santiago', 'Cabildo', 'La Ligua'].each do |name|
    Commune.create!(name: name)
end

['Disponible', 'Arrendado', 'Vendido'].each do |status_name|
    Status.find_or_create_by!(name: status_name)
end

['Venta', 'Arriendo'].each do |modality_name|
    Modality.find_or_create_by!(name: modality_name)
end

['Estudio', '1D1B', '2D1B'].each do |type_name|
    Type.find_or_create_by!(name: type_name)
end

building_data = [
    { name: 'Edificio1', address: 'Dirección1', commune_id: 1, services: [parking, gym] },
    { name: 'Edificio2', address: 'Dirección2', commune_id: 1, services: [gym, pool] },
    
  ]
  
  building_data.each do |data|
    services = data.delete(:services)
    building = Building.create!(data)
    building.services = services
  end

5.times do |i|
    Department.create!(number: i,
                       price: 100000 + (i * 1000),
                       type_id: Type.first.id,
                       building_id: Building.first.id,
                       status_id: Status.first.id,
                       modality_id: Modality.first.id)
end