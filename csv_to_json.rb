require 'csv'
require './get_data'

class CsvToJson
  def self.import(filename)
    data = CSV.read(filename, col_sep: ';')
    data.shift

    patients = []
    doctors = []
    results = []
    test_types = []
    tests_results = []

    for row in data
      patient = GetData.patient(row)
      patients << patient if !(patients.include?(patient))

      doctor = GetData.doctor(row)
      doctors << doctor if !(doctors.include?(doctor))

      result = GetData.result(row)
      results << result if !(results.include?(result))

      test_type = GetData.test_type(row)
      test_types << test_type if !(test_types.include?(test_type))

      test_result = GetData.test_result(row)
      tests_results << test_result if !(tests_results.include?(test_result))
    end

    return patients, doctors, results, test_types, tests_results
  end
end
