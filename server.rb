require 'sinatra'
require './csv_to_json'

configure do
  set port: 3000
  set bind: '0.0.0.0'
end

get '/' do
  'Okay'
end

get '/import' do
  CsvToJson.import('result_tests.csv').to_json
end
