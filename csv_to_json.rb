require 'csv'

class CsvToJson
  def self.import(filename)
    data = CSV.read(filename, col_sep: ';')
    data.shift

    patients = []
    doctors = []
    results = []
    test_types = []
    tests = []

    for row in data
      patient = {
        cpf: row[0],
        name: row[1],
        email: row[2],
        birthday: row[3],
        street_address: row[4],
        city_address: row[5],
        state_address: row[6]
      }
      
      patients << patient if !(patients.include?(patient))
      
      doctor = {
        doctor_crm: row[7],
        doctor_crm_state: row[8],
        doctor_name: row[9],
        doctor_email: row[10]
      }

      doctors << doctor if !(doctors.include?(doctor))
      
      result = {
        result_token: row[11],
        result_date: row[12],
        cpf: row[0],
        doctor_crm: row[7],
      }

      index = results.index { |elem| elem[:result_token] == result[:result_token] }

      if !(index)
        results << result
        index = results.length - 1
      end

      test_type = {
        test_type: row[13],
        test_limits: row[14]
      }

      test_types << test_type if !(test_types.include?(test_type))

      test = {
        result_token: row[11],
        test_type: row[13],
        result: row[15]
      }

      tests << test if !(tests.include?(test))
    end

    return patients, doctors, results, test_types, tests
  end
end
