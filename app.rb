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
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1 + @word2 + @word3 + @word4 + @word5}"
  end 
  

end