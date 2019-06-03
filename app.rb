require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @num = params[:number]
    "#{(@num.to_i ** 2).to_s}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    Array.new(@number.to_i, @phrase).each {|p| puts "#{@phrase}"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

    case @operation
    when 'add'
      "#{@number1.to_i + @number2.to_i}"
    when 'subtract'
      "#{@number1.to_i - @number2.to_i}"
    when 'multiply'
      "#{@number1.to_i * @number2.to_i}"
    when 'divide'
      "#{@number1.to_i / @number2.to_i}"
   end
 end

end
