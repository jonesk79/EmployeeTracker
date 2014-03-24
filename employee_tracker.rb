require 'active_record'
require 'employee'

database_configuration = YAML::load(File.open('./db/config.yml'))
development_configuration = database_configuration["development"]
ActiveRecord::Base.establish_connection(development_configuration)

def welcome
  puts "Welcome to Employee Tracker!"
  menu
end

def menu
  choice = nil
  until choice == 'e'
    puts "Press 'a' to add an employee."
    puts "Press 'l' to list your employees."
    choice = gets.chomp
    case choice
    when 'a'
      add
    when 'l'
      list
    when 'e'
      puts "Have a good day."
    else
      puts "That's not a valid option."
    end
  end
end
