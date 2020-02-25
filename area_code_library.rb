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
    "lancaster" => "717",
  }
  
  def get_city_names(hash) 
    return hash.keys
  end
  
  def get_area_code(hash, key) 
    return hash[key]
  end
  
  loop do
    puts "Do you want to lookup an area code based on a city name?(Y/N)"
    answer = gets.chomp.downcase
    break if answer != "y"
    puts "Which city do you want the area code for?"
    puts get_city_names(dial_book)
    city = gets.chomp.downcase
    if dial_book.include?(city)
      puts "The area code for #{city} is #{get_area_code(dial_book, city)}"
      break
    else
      puts "Invalid city name"
      break
    end
  end