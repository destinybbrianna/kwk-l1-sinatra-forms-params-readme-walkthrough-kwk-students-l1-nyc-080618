require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    erb :fortune
  end 
  
  get '/results' do 
    erb :results
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

 
