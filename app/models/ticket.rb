class Ticket < ActiveRecord::Base
  attr_accessible :about, :description, :funrider, :pilot, :roll1, :roll2, :roll3, :status

  validates :funrider,  :presence => true
  validates :about, :presence => true,
                    :length => { :minimum => 10 }

end
