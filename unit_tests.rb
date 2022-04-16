require 'test/unit'
require './csv_to_json'

class CsvToJsonTest < Test::Unit::TestCase
  def test_csv_to_hash
    result = CsvToJson.import('result_tests.csv')

    patient = result[0].find { |row| row[:cpf] == '048.973.170-88'}
    doctor = result[1].find { |row| row[:doctor_crm] == 'B0002IQM66'}
    result_token = result[2].find { |row| row[:result_token] == '2VPICQ'}

    assert_equal 'Emilly Batista Neto', patient[:name]
    assert_equal 'Maria Helena Ramalho', doctor[:doctor_name]
    assert_equal '077.411.587-40', result_token[:cpf]
  end
end
