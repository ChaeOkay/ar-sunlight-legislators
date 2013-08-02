# require class
# write query on class object
require_relative '../db/config.rb'
require_relative 'models/politician.rb'

#p Politician.where(:state => 'CA')

# def create_state_params(state)
#   ca_sen_params = { :state => 'CA', 
#                     :title => 'Sen'}

#   ca_rep_params = { :state => 'CA', 
#                     :title => 'Rep'}
def query(state, title)
  Politician.where(:state => state, :title => title).each do |object|
    puts "\t#{object[:firstname]} #{object[:lastname]} (#{object[:party]})"
  end
end

def display(args)
  puts "Senators:"
  query(args[:state], args[:first_title])
  puts "Representatives:"
  query(args[:state], args[:second_title])
end

display(:state => 'CA', :first_title => 'Sen', :second_title => 'Rep')

# ca_senators = Politician.where(ca_sen_params)
# ca_representatives = Politician.where(ca_rep_params)

# ca_senators.each do |senator|
#   puts "#{senator[:firstname]} #{senator[:lastname]} (#{senator[:party]})"
# end 

# ca_representatives.each do |representative|
#   puts "#{representative[:firstname]} #{representative[:lastname]} (#{representative[:party]})"
# end



# create a method that ouputs formatted
# create another method final output

# final_result
# puts "Sent"
#   query(object(ca_senator, sen(params))
#  puts "Rep"
#   query(object, rep)
#

# run our query get Politicna objects
# => Politician.where(:state => 'CA', :title => 'Sen.')
# object[:firstname]
# object [:lastname]
# object[:party]
# format 
