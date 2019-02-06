require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
attr_accessor :say
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse!
  end
  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end# Write your code here!
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
  end
end
