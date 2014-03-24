require 'spec_helper'

describe Employee do
  it 'can add employees to the database' do
    test_employee = Employee.create({:name => 'Mac Tosh'})
    Employee.all.should eq [test_employee]
  end
end
