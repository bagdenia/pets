# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do

  100.times do

    User.create! \
      email: Faker::Internet.email,
      # password: Faker::Internet.password(10, 20),
      # name: Faker::Names.first_name
      lat: rand(57.0..58.0),
      lng: rand(57.0..58.0)

  end

end
