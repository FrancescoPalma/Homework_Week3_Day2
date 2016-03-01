require 'sinatra'
require 'sinatra/contrib/all'
require 'json'

require_relative './models/info'
require_relative './models/word_formatter'

get '/all/:name/:surname/:age/:role' do
  content_type(:json)

  info = Info.new(params[:name].to_s, params[:surname].to_s, params[:age].to_i, params[:role].to_s)

  bio = {
    name: info.name(),
    surname: info.surname(),
    age: info.age(),
    role: info.role()
  }

  return bio.to_json()
end

get '/:name/:surname/:age/:role' do

  info = Info.new(params[:name].to_s, params[:surname].to_s, params[:age].to_i, params[:role].to_s)
  @information1 = info.name
  @information2 = info.surname
  @information3 = info.age
  @information4 = info.role
  erb :bio 

end

get '/address' do
  content_type(:json)

  address = {
    address: '3 ARGYLE HOUSE',
    building: 'CODEBASE',
    postcode: 'e13 zqf',
    phone: '0131558030'
  }

  word_formatter = WordFormatter.new(address[:postcode])

  address[:postcode] = word_formatter.upcase

  address.to_json()

end