# require class
# write query on class object
require_relative '../db/config.rb'
require_relative 'models/politician.rb'

#p Politician.where(:state => 'CA')

ca_sen_params = { :state => 'CA', 
                  :title => 'Sen'}

ca_rep_params = { :state => 'CA', 
                  :title => 'Rep'}
def query(params)
  Politician.where(params).each do |object|
    puts "\t#{object[:firstname]} #{object[:lastname]} (#{object[:party]})"
  end
end

def display(sen_params, rep_params)
  puts "Senators:"
  query(sen_params)
  puts "Representatives:"
  query(rep_params)
end

display(ca_sen_params, ca_rep_params)

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
