=begin
Pseudo-code:
puts. welcome the user
gets.chomp store horse_names in array
gets.chomp user's bet and store
sample the array


=end
bank = 100.0
horses = {
  "bernado" => 5.0,
  "keith" => 10.0,
  "johno" => 2.0,
  "silver bullet" => 100.0,
}
while bank > 0

  puts "#{bank}"
  puts "Hello, welcome to this awesome horse race"

  puts "the horses running are,"
  horses.each do |horse, odds|
    puts "#{horse.capitalize} @ #{odds}"
  end
  puts "who would you like to bet on?"
  horse = gets.chomp.downcase

  puts "how much do you want to bet?"
  amount = gets.chomp.to_i

  amount = 0

  while amount <= bank
    puts "you cannot bet that much, bet again"
    amount = gets.chomp.to_i
  end

    puts "you bet #{amount} on #{horse.capitalize}"
    bank = bank - amount

  sleep(2)
  winner = horses.keys.sample

  if winner == horses
    amout_won = amount * horses[horse]
    puts "you won! #{amout_won} was added to bank"
    bank = bank + amout_won
  elsif horse.include? horse
    puts "you lost, the winner was #{winner}"
  else
    puts "you muppet, choose a horse that's winning"
  end

end
