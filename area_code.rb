# Learn Ruby 

#1. Create a dictionary (hash) with 10 city names, where the city name (key) will be a string, and the area code would be the value, an example is given in the resources in the project video

#2. Display the city names to the user for cities which are available in the dictionary

#3. Get input from the user on the city name (hint: use gets.chomp method)

#4. Display area code based on user's city choice

#5. Loop - keep the program running and prompt the user for new city names to lookup

#6. Complete the two methods to lookup city names and to find area code based on city names

#7. Please post your code to the Q & A/discussions area for the video

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}

# Get city names from the hash
def get_city_names(somehash)
# Write code here
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
# Write code here
  somehash.fetch_values(key)
end
 
# Execution flow
loop do
# Write your program execution code here
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  puts "\n" 
  puts get_city_names(dial_book)
  puts "Please enter a city name to get area code"
  puts "\n" 
  city_name = gets.chomp
  if(dial_book.has_key?(city_name))
    result = get_area_code(dial_book,city_name)
    puts "The area code for #{city_name} is #{result}"
  else
    puts "Not found"
  end
end  