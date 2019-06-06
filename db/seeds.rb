Artist.destroy_all
Instrument.destroy_all

10.times do
  Artist.create(name: Faker::Name.name, age: rand(1..100), bio: Faker::Hipster.sentence)
end



5.times do
  Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name, artist_id: Artist.first.id)
end

2.times do
  Instrument.create(name: Faker::Music.instrument, brand: Faker::Company.name, artist_id: Artist.second.id)
end

puts "File has been seeded! 🍀"
