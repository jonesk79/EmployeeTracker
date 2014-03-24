require 'active_record'
require 'rspec'
require 'shoulda-matchers'

require 'employee'

database_configuration = YAML::load(File.open('./db/config.yml'))
test_configuration = database_configuration["test"]
ActiveRecord::Base.establish_connection(test_configuration)

Rspec.configure do |config|
  config.after(:each) do
    Employee.all.each { |employee| employee.destroy }
  end
end
