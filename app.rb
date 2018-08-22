require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :fortune
  end 
  
  post '/results' do 
   "Hello #{params[:name]}! It is a good day to be a #{params[:sign]}, for other requests or private tarot readings please contact me at destinyfortuneteller@gmail.com!"
  erb :results
  end 
  
  post '/results' do 
    @name =  params[:name] 
    @name = params[:sign]
    @name = params[:yesorno]
    @name = params[:age]
    erb = :results
  end 
end 
 
# Add your post route and action below

 
