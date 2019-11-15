require_relative 'config/environment'

class App < Sinatra::Base

  get '/new' do 
    erb :index 
  end 
  
  get '/create_puppy' do 
    erb :create_puppy
  end 
  
  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:age]
    @puppy = Puppy.new(@name, @breed, @age)
    
    erb :display_puppy 
  end 
end
