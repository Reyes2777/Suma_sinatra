require 'sinatra'
require 'sinatra/reloader'

sum = 0

if development?
    get '/' do 
        @counter = sum
        erb :index
    end
end

post "/" do
   
    suma = params[:suma]
    suma = suma.to_i
    sum += suma

    redirect to "/"
end