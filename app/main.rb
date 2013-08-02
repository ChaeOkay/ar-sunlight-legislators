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

arg1 = {:title => 'Sen'}
arg2 = {:title => 'Sen', :gender => 'M'}
arg3 = {:title => 'Rep'}
arg4 = {:title => 'Rep', :gender => 'M'}

p count(arg1)
p count(arg2)
p count(arg3)
p count(arg4)

# display_for_state(:state => 'CA', :first_title => 'Sen', :second_title => 'Rep')

#2.
# gender, title, in_office
# come up with sequel query
# => a = query total number of senators/representatives
# => b = query number of male senators ----> count..
# =>    AND in_office be = 1 *
# divide 'b' by 'a' to find percentage, multiply 100. 
# format for display. 

# select title, count(title)  from politicians where title like '%Sen%'
# group by title order by count(title) desc;


# create a method to count the number of senators or representatives (arg is title)
