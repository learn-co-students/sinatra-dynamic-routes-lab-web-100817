require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
      "#{params[:name].reverse}"
  end

  get '/square/:number' do
      "#{params[:number].to_i * params[:number].to_i}"
  end
  get '/say/:number/:phrase' do
        count = 0
        newStr = ""
        while count < params[:number].to_i do
          newStr += "#{params[:phrase]}"
          count += 1
        end
        newStr
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
      # "#{params[:number1].to_i params[:operation] params[:number2].to_i}"
    newStr = ""
    if params[:operation] == "add"
      newStr =  params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      newStr =  params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      newStr =  params[:number1].to_i * params[:number2].to_i
    else
      newStr =  params[:number1].to_i / params[:number2].to_i
    end
    "#{newStr}"
  end
end
