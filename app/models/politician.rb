
class Politician < ActiveRecord::Base

  validates_presence_of :title, :firstname, :lastname, :party, :state
  #validates_numericality_of :in_office, :equal_to => 1
  validates_length_of :phone, :in => 10..32, :allow_blank => true
  #validates_format_of :website, :with => URI::regexp(%w(http https))

  # validiations will prevent new records from being saved
  # if conditions are not met
end
