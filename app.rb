require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num * @num}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    result =  ""
    @num.times do
      result << @phrase
    end
    result
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @num_one = params[:number1].to_i
    @num_two = params[:number2].to_i
    @op = params[:operation]
    case @op
    when 'add'
      "#{num_one + num_two}"
    when 'subtract'
      "#{num_one - num_two}"
    when 'multiply'
      "#{num_one * num_two}"
    when 'divide'
      "#{num_one / num_two}"
    end
  end
  
end