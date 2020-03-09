require_relative 'config/environment'
require 'pry '

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end 
  
  get '/square/:number' do 
    @number = params[:number].to_i ** 2 
    "#{@number}"
  end 
  
  get '/say/:number/:phrase' do 
    @phrase = params[:phrase]
    @number = params[:number].to_i 
    "#{@phrase * @number}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word = params[:word]
  

end