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

  User.create(
    {
      address_id:   index + 1,
      first_name:   Faker::Name.first_name ,
      last_name:    Faker::Name.last_name,
      email:        Faker::Internet.email,
      password:     Faker::Internet.password(min_length: 6, max_length: 20),
      avator:       Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
      phone:        Faker::PhoneNumber.cell_phone
    })
end
