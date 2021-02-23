10.times do
  User.create(
    {
      first_name:   Faker::Name.first_name ,
      last_name:    Faker::Name.last_name,
      email:        Faker::Internet.email,
      password:     Faker::Internet.password(min_length: 6, max_length: 20),
      avator:       Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
      phone:        Faker::PhoneNumber.cell_phone
    })
end

20.times do
  City.create(
    {
      city: Faker::Address.city
    })
end
