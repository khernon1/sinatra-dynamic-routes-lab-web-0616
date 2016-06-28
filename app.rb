require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    name_reversed = params[:name].reverse
    "#{name_reversed}"
  end

  get "/square/:number" do
    num = params[:number].to_i
    num *= num
    "#{num}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phr = params[:phrase]        
    num.times.map do |str|
      "#{phr}\n"
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    wrd1 = params[:word1]
    wrd2 = params[:word2]
    wrd3 = params[:word3]
    wrd4 = params[:word4]
    wrd5 = params[:word5]
    "#{wrd1} #{wrd2} #{wrd3} #{wrd4} #{wrd5}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if params[:operation] == "add"
      result = num1 + num2
    elsif params[:operation] == "subtract"
      result = num1 - num2
    elsif params[:operation] == "multiply"
      result = num1 * num2
    elsif params[:operation] == "divide"
      result = num1/num2
    else
      "Not a valid operation"
    end
    "#{result}"
  end

end