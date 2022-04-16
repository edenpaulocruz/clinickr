class GetData
  def self.patient(row)
    patient = {
      cpf: row[0],
      name: row[1],
      email: row[2],
      birthday: row[3],
      street_address: row[4],
      city_address: row[5],
      state_address: row[6]
    }
  end
  
  def self.doctor(row)
    doctor = {
      doctor_crm: row[7],
      doctor_crm_state: row[8],
      doctor_name: row[9],
      doctor_email: row[10]
    }
  end
  
  def self.result(row)
    result = {
      result_token: row[11],
      result_date: row[12],
      cpf: row[0],
      doctor_crm: row[7],
    }
  end
  
  def self.test_type(row)
    test_type = {
      test_type: row[13],
      test_limits: row[14]
    }
  end
  
  def self.test_result(row)
    test_result = {
      result_token: row[11],
      test_type: row[13],
      result: row[15]
    }
  end
end