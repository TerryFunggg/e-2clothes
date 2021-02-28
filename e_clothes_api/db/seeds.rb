20.times do
  City.create(
    {
      name: Faker::Address.city
    })
end

20.times do |index|

    address = Address.new(
      city_id: rand(1...20),
      street_address: Faker::Address.street_address,
      secondary_address: Faker::Address.secondary_address,
      building_address: Faker::Address.building_number,
      zip_code: Faker::Address.zip_code
  )
    user = User.new(
      first_name:   Faker::Name.first_name ,
      last_name:    Faker::Name.last_name,
      email:        Faker::Internet.email,
      password:     Faker::Internet.password(min_length: 6, max_length: 20),
      avator:       Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
      phone:        Faker::PhoneNumber.cell_phone
    )
  user.address = address
  user.save
end

5.times do |index|
  address = Address.new(
      city_id: rand(1...20),
      street_address: Faker::Address.street_address,
      secondary_address: Faker::Address.secondary_address,
      building_address: Faker::Address.building_number,
      zip_code: Faker::Address.zip_code
  )

    shop = Shop.create(
      address:      address,
      title:        Faker::Restaurant.name,
      description:  Faker::Restaurant.description,
      logo:         Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
      state:        0,
      is_active:    true
    )

    user = User.new(
      first_name:   Faker::Name.first_name ,
      last_name:    Faker::Name.last_name,
      email:        Faker::Internet.email,
      password:     Faker::Internet.password(min_length: 6, max_length: 20),
      avator:       Faker::Avatar.image(slug: "my-own-slug", size: "50x50"),
      phone:        Faker::PhoneNumber.cell_phone
    )

    ShopOwner.create(
      user: user,
      shop: shop,
      apply_state:0
    )
end
