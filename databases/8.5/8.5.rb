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

10.times do 
	create_user_info(db, Faker::Internet.email, Faker::Internet.password)
end

# explore ORM by retrieving data