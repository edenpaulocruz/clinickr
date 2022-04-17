require './csv_to_json'

class ShowResult
  def self.show(token)
    patients, doctors, results, test_types, tests_results = CsvToJson.import('result_tests.csv')

    result = results.find { |res| res[:result_token] == token }
    patient = patients.find { |patient| patient[:cpf] == result[:cpf] }
    doctor = doctors.find { |doctor| doctor[:doctor_crm] == result[:doctor_crm] }
    tests = agroup_tests(token, tests_results, test_types)

    result_from_token = {
      result_token: "#{result[:result_token]}",
      result_date: "#{result[:result_date]}",
      cpf: "#{patient[:cpf]}",
      name: "#{patient[:name]}",
      email: "#{patient[:email]}",
      birthday: "#{patient[:birthday]}",
      doctor: {
        crm: "#{doctor[:doctor_crm]}",
        crm_state: "#{doctor[:doctor_crm_state]}",
        name: "#{doctor[:doctor_name]}"
      },
      tests: tests
    }
  end
end

def agroup_tests(token, tests_results, test_types)
  tests = []

  tests_select = tests_results.select { 
    |test_result| test_result[:result_token] == token 
  }

  tests_select.each do |t|
    tests << {
      type: t[:test_type],
      limits: test_types.find { |tt| tt[:test_type] == t[:test_type] }[:test_limits],
      result: t[:result]
    }
  end

  tests
end