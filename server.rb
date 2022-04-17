require 'sinatra'
require './csv_to_json'
require './show_result'

configure do
  set port: 3000
  set bind: '0.0.0.0'
end

get '/' do
  'Okay'
end

get '/tests/import' do
  CsvToJson.import('result_tests.csv').to_json
end

get '/tests/:token' do
  ShowResult.show(params[:token]).to_json
end