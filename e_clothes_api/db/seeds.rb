20.times do
  City.create(
    {
      name: Faker::Address.city
    })
end


10.times do |index|
  Address.create(
    city_id: rand(1...20),
    street_address: Faker::Address.street_address,
    secondary_address: Faker::Address.secondary_address,
    building_address: Faker::Address.building_number,
    zip_code: Faker::Address.zip_code
  )
end
