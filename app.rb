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
    
  end 
  post '/results'/:age do 
    @age = params[:age]
  end 
  
  
  
end 
 
# Add your post route and action below
describe 'POST /results' do 
    it 'responds with a 200' do
      post '/results'

      expect(last_response.status).to eq(200)
    end

 
