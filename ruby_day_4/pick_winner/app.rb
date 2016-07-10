require "sinatra"
require "sinatra/reloader"

# default port is 4567, you can change that by writing:
# set :port, 9494

# the combination of (verb + url) must be unique

# we call this: action
get "/" do
  # erb :index, layout: :default
  erb(:index, {layout: :default})
end

post "/pick_winner" do
  @names = params[:names_list]
  names_array = @names.split(",")
  names_array.each {|name| name.strip! }
  @your_name = names_array.sample
  # params looks like: {"names_list" => "tam, michael, marry"}
  # "Form Submitted. Winner is #{names_array.sample}"
  erb(:index, {layout: :default})
end
