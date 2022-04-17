require 'test/unit'
require './csv_to_json'
require './show_result'

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

class ShowResultTest < Test::Unit::TestCase
  def test_show_result
    result = ShowResult.show('0W9I67')

    assert_equal '0W9I67', result[:result_token]
    assert_equal '2021-07-09', result[:result_date]
    assert_equal '048.108.026-04', result[:cpf]
    assert_equal 'Juliana dos Reis Filho', result[:name]
    assert_equal 'mariana_crist@kutch-torp.com', result[:email]
    assert_equal '1995-07-03', result[:birthday]
    assert_equal 'B0002IQM66', result[:doctor].values[0]
    assert_equal 'SC', result[:doctor].values[1]
    assert_equal 'Maria Helena Ramalho', result[:doctor].values[2]
    assert_equal 'hemácias', result[:tests][0][:type]
    assert_equal '45-52', result[:tests][0][:limits]
    assert_equal '28', result[:tests][0][:result]
    assert_equal 'ácido úrico', result[:tests][-1][:type]
    assert_equal '15-61', result[:tests][-1][:limits]
    assert_equal '78', result[:tests][-1][:result]
  end
end
