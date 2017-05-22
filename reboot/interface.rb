=begin
create Hash with items in the store
create an empty array for cart
list store items
ask user what they want
push item into cart
=end

store_items = {
  "hamster" => 20,
  "spide" => 50,
  "puppy" => 70
  "rabbit" => 75,
}

puts "Welcome to my Pet Shop!"

cart = []

store_items.each do |pet, price|
puts "- #{pet}, #{price}"
end
pet_name == nil
until == ""
puts "Which pet do you really really want?"
  pet_name = gets.chomp
  cart << pet_name
end

p cart
