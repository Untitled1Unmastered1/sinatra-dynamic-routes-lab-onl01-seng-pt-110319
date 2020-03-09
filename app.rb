require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i 
    "#{Math.sqrt(@number).to_s}"
  end 

end