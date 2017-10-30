require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "Goodbye, #{@user_name}."
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num**2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    str = ""
    @num.to_i.times do
      str << @phrase
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    str = params.values.join(" ")
    str << "."
  end

  get '/:operation/:num1/:num2' do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    if params[:operation] == 'add'
      (@num1 + @num2).to_s
    elsif params[:operation] == 'subtract'
      (@num1 - @num2).to_s
    elsif params[:operation] == 'multiply'
      (@num1 * @num2).to_s
    else 
      (@num1 / @num2).to_s
    end
  end

end
