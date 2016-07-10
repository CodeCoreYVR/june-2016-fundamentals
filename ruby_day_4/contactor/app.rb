require "sinatra"
require "sinatra/reloader"
require "data_mapper"

enable :sessions

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'admin']
  end
end


DataMapper.setup(:default, "sqlite://#{Dir.pwd}/contact.db")

# Create the class to connect to the Database

class Contact
  include DataMapper::Resource

  property :id, Serial
  property :first_name, String
  property :last_name, String
  property :email, String
  property :phone_number, String
  property :message, Text

end

class Article
  include DataMapper::Resource

  property :id, Serial
  property :title, String
  property :body, Text
end

DataMapper.auto_upgrade!

get "/" do
  session[:lucky_number] ||= rand(100)
  erb(:index, {layout: :default})
end

post "/contact" do
  Contact.create params
  erb :thank_you, layout: :default
end

get "/contacts" do
  protected!
  @contacts = Contact.all
  erb :contacts, layout: :default
end

get "/contacts/:id" do |id|
  protected!
  @contact = Contact.get id
  erb :details, layout: :default
end
