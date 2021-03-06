# Secure Password Generator

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("username_and_password.db")
db.results_as_hash = true

# add delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS username_and_password (
    id INTEGER PRIMARY KEY,
    email VARCHAR(255),
    password VARCHAR(255)
  )
SQL

# create  table (if not already there)
db.execute(create_table_cmd)

# add test
# db.execute("INSERT INTO username_and_password (email, password) VALUES ('bob@me.com', 'pickles') ")

# add more tests
def create_user_info(db, email, password)
	db.execute("INSERT INTO username_and_password (email, password) VALUES (?,?)", [email, password])
end

# 10.times do 
# 	create_user_info(db, Faker::Internet.email, Faker::Internet.password)
# end

# explore ORM by retrieving data
# username_and_password = db.execute("SELECT * FROM username_and_password")
# username_and_password.each do |user_info|
#  	puts "This is a newly generated email and password pair #{user_info['email']} #{user_info['password']}"
# end
# p username_and_password

# USER INTERFACE
puts "Welcome to a super secretive internet website!"
puts "For security purposes we will automatically generate an email and password for you"
new_user = create_user_info(db, Faker::Internet.email, Faker::Internet.password)
puts "Please use the following information when logging in to this site username/email: #{Faker::Internet.email} password: #{Faker::Internet.password}"
puts "Would you like a different login information set? (y/n)"
different = gets.chomp.downcase

	if different == "y" || different == "yes" || different == "ya"
		new_user_update = create_user_info(db, Faker::Internet.email, Faker::Internet.password)
		puts "Please use the following information when logging in to this site username/email: #{Faker::Internet.email} password: #{Faker::Internet.password}"
		 
	else different == "n" || different ==  "no" || different ==  "nah"	
		
	end

puts "See you next time you feel like doing more super mysterious, secretive things on this inexplicable website. Toodles!"
