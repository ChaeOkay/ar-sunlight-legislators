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

def count(args)
  Politician.where(args).count
end

def display_count_analysis(args)
  male_count = count(:title => args[:title], :gender => args[:gender])
  male_percentage = ((male_count.to_f)/count(:title => args[:title]).to_i)*100

  print "Male #{args[:congress]}: #{male_count.to_i}\s"
  puts "(#{male_percentage.to_i})%"
end


senator_args = {:congress => 'Senators', :title => 'Sen', :gender => 'M'}
rep_args = {:congress => 'Representatives', :title => 'Rep', :gender => 'M'}

# display_count_analysis(senator_args)
# display_count_analysis(rep_args)

# validations prevent congresspeople who are not actively in office from 
# being saved to the database. No deletion is required. IF we did:
# p Politician.where(:in_office => 0).each { |record| record.destroy }
# puts
# puts
# puts "After destruction:"
# p Politician.where(:in_office => 0)
