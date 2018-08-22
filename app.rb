require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :fortune
  end 
  
  get '/results' do 
   "Hello #{@name}! It is a good day to be a #{@sign}, for other requests or private tarot readings please contact me at destinyfortuneteller@gmail.com!"
  end 
  
  post '/results' do 
    @name =  params[:name] 
    @sign = params[:sign]
    @yesorno = params[:yesorno]
    @age = params[:age]
    erb = :results
  end 
end 
 
# Add your post route and action below

 
