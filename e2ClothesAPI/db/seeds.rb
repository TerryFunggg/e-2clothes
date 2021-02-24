20.times do
  City.create(
    {
      city: Faker::Address.city
    })
end


50.times do |index|
  Address.create(
    city_id: rand(1...20),
    zip_code: Faker::Address.zip_code
  )

  User.create(
    {
      first_name:   Faker::Name.first_name ,
      last_name:    Faker::Name.last_name,
      email:        Faker::Internet.email,
      password:     Faker::Internet.password(min_length: 6, max_length: 20),
      avator:       Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
      phone:        Faker::PhoneNumber.cell_phone
    })

  Customer.create(
    user_id:    index + 1,
    address_id: index + 1
  )
end
