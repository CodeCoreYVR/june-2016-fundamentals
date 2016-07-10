# to connect a class to a table using DataMapper the class
# name must be a singular version of the table name. DataMapper
# assumes that the table name is plural.
# in the case below, we will connect to a table named 'users'
class User
  include DataMapper::Resource

  property :id, Serial # Serial is: INTEGER AUTOINCREMENT PRIMARY KEY
  property :first_name, String # String is VARCHAR
  property :last_name, String
  property :email, String
  property :address, String
  property :phone_number, String
  property :biography, Text
  property :deleted, Boolean
end
DataMapper.auto_upgrade!
