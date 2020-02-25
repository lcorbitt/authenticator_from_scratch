# frozen_string_literal: true

users = [
  { username: 'lcorbitt', password: 'password' },
  { username: 'thartman', password: 'password2' },
  { username: 'acruz', password: 'password3' },
  { username: 'hcorbitt', password: 'password4' }
]

def auth_user(username, password, users_list)
  users_list.each do |user|
    if user[:username] == username && user[:password] == password
      return "Login successful! #{user}"
    end
  end
  "Credentials were not correct."
end

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'

attempts = 1
while attempts < 4
  print 'Username: '
  input_username = gets.chomp
  print 'Password: '
  input_password = gets.chomp
  authentication = auth_user(input_username, input_password, users)
  puts authentication

  puts 'Press n to quit or any other key to continue:'
  input = gets.chomp.downcase
  break if input == 'n'
  attempts += 1
end
puts "You have exceeded the number of allowed attempts" if attempts == 4
