require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :index 
  end 
  
  get '/new' do 
    erb :create_puppy
  end 
  
  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @months_old = params[:age]
    @puppy = Puppy.new(@name, @breed, @months_old)
    
    erb :display_puppy 
  end 
end
