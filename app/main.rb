# require class
# write query on class object
require_relative '../db/config.rb'
require_relative 'models/politician.rb'

#p Politician.where(:state => 'CA')

ca_params = { :state => 'CA', 
                :title => 'Sen'}

ca_senators = Politician.where(ca_params)

ca_senators.each do |senator|
  puts "#{senator[:firstname]}"
end

# run our query get Politicna objects
# => Politician.where(:state => 'CA', :title => 'Sen.')
# object[:firstname]
# object [:lastname]
# object[:party]
# format 
