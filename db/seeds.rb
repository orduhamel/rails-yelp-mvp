puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating Restaurants...'
Restaurant.create!(
  name: 'La Table de Yo',
  address: 'Rue de la ville en bois, Nantes',
  phone_number: '06 56 43 78 36',
  category: 'french'
)

8.times.each do
  categories = ["chinese", "italian", "japanese", "french", "belgian"].sample

  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories
  )
end

puts 'Finished!'
