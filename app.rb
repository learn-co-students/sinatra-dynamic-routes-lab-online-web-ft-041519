require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name].split('')
    @reversed_name = @name.reverse.join
    "#{@reversed_name}"
  end
  
  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end
  
  # get '/say/:number/:phrase' do
  #   @num = params[:number].to_i
  #   @phrase = params[:phrase]
    
  #   @num.times do 
  #     puts "#{@phrase}"
  #   end
    

  #   # @num.times {puts "#{@phrase}"}
  # end
  
  get '/say/:word1/:word2/:word3/:word4/:word5'
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
  
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  
  
    # "#{params[:word1]}#{params[:word2]}#{params[:word3]}#{params[:word4]}#{params[:word5]} "
  
  end
  
end