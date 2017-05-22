=begin
Welcome message
Display the menu (make list, add, ...)
Read user input
Implement user wishes
=end
require "open-uri"
require "nokogiri"

puts "Welcome to you Christmas List"
puts "_________________________________"
list = []
action = 0
listed_items = []

until action == "exit"

  puts "What do you want to do? (list, add, delete, mark, inspire, exit)"
  action = gets.chomp

  if action == "list"
    puts "You have #{list.length} items in your list."
    list.each do |present, status|
      if status #condition status by itself will be true by default,
                #same as if status == true
        puts "- #{item.capitalize}: Item Purchased"
      else
        puts "- #{present.capitalize}: Not Purchased"
      end
    end

  elsif action == "add"
    puts "Add new item"
    #print message present do you want to add to list
    puts "Which item would you like to add?"
    #capture as variable and push into the array
    new_item = gets.chomp.downcase
    list[new_item] = false

  elsif action == "exit"
    puts "See you later"

  elsif action == "delete"
    puts "Which present would you like to delete?"
    delete_item = gets.chomp
    list.delete(delete_item)


  elsif action == "mark"
    puts "Mark item"
    #print message to request for item to update
    puts "Which item would you like to update?"
    #capture as variable and push into the array
    marked_item = gets.chomp.downcase
    list[marked_item] = true

    #Be able to choose from the list

  elsif action == "inspire"
    #Ask what we want inspiration for
    puts "Which kind of thing are you looking for?"
    #Save the answer as a variable
    answer = gets.chomp
    #Search Etsy using answer
    url = "https://www.etsy.com/uk/search?q=#{answer}"
    results = open(url)
    doc = Nokogiri::HTML(results)
    doc.search(".card-title").each do |title|
      listed_items << title.text.strip.slice(0..30)
    end
    listed_items.first(10).each_with_index do |result, index|
      puts "- #{result}"
    end
    #Return a list of potential inspirations
    puts "What would you like to choose from the list?"
    #Be able to choose from the list
    choice = gets.chomp.to_i -1
    #Add the choice to your list
    new_item = results[item_index]title.text.strip.slice(0..30)
    end

  else
    puts "not an option"
  end

end
