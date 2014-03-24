class Employee < ActiveRecord::Base
  attr_reader :employee_name

  def self.add(employee_name)
    @employee_name = employee_name
  end
end
