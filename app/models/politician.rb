
class Politician < ActiveRecord::Base

  validates_presence_of :title, :firstname, :lastname, :party, :state, 
                        :in_office
  validates_length_of :phone in => 10..32, :allow_blank => true
  validates_format_of :website, with => URI::regexp(%w(http https))
end
