require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end
  
  get "/square/:number" do
    @number = params[:number].to_i**2
    "#{@number}"
  end
  
  get "/say/:number/:phrase" do
    @product = params[:phrase] * params[:number].to_i 
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @store = []
    params.each do |x,k|
      @store << [k]
    end
    @store.flatten.join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    
    if operation == "add"
      answer = number1 + number2 
    elsif operation == "subtract"
      answer = number1 - number2 
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2 
    end 

    answer.to_s
    
  end 

end