# validation ideas
##Formats
# email
# phone number
#=>validates_length_of :phone in => 10..32,:allow_blank => true
# website formats for various fields
#=>validates_format_of :website,with=> URI::regexp(^(http|https))
# twitter, facebook

##Presence Of
# title, firstname, lastname, party, state, in_office
# => example: validates_presence_of :title
#active record base => has initialize and save, etc.

class Politician < ActiveRecord::Base


end
