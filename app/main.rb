# require class
# write query on class object
require_relative '../db/config.rb'
require_relative 'models/politician.rb'

def query(state, title)
  sorted = Politician.where(:state => state, :title => title).order("lastname")
  sorted.each do |object|
    puts "\t#{object[:firstname]} #{object[:lastname]} (#{object[:party]})"
  end
end

def display_for_state(args)
  puts "Senators:"
  query(args[:state], args[:first_title])
  puts "Representatives:"
  query(args[:state], args[:second_title])
end

display_for_state(:state => 'CA', :first_title => 'Sen', :second_title => 'Rep')
