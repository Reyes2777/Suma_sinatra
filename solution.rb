require 'sinatra'

sum = 0

get '/' do 
    @counter = sum
    erb :index
end

post "/" do
   
    suma = params[:suma]
    suma = suma.to_i
    sum += suma

    redirect to "/"
end