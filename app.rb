require 'sinatra'

get '/' do
  "hello!"
end 

get '/secret' do
  "Nothing to see here...move along, now!"
end 

get '/random-cat' do
   @name = ["Viking", "Amigo", "Oscar"].sample
   erb(:index)
end 


post '/named-cat' do
  p params
   @name = params[:name]
   erb(:index)
end 


get '/name-cat' do
  p params
   @name = params[:name]
   erb(:index)
end 
