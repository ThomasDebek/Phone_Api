# db/seeds.rb
require 'faker'

Phone.destroy_all

20.times do
  Phone.create!(
    name: "#{Faker::Device.unique.model_name} #{Faker::Number.unique.number(digits: 3)}",
    description: Faker::Lorem.sentence(word_count: 8),
    price: Faker::Commerce.price(range: 300.0..2500.0)
  )
end

puts "✅ Created #{Phone.count} phones!"
