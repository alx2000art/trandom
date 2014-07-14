class Ticket < ActiveRecord::Base
  attr_accessible :about, :description, :funrider, :pilot, :roll1, :roll2, :roll3, :status, :user_id
  belongs_to :user
  validates :funrider,  :presence => true
  validates :about, :presence => true,
                    :length => { :minimum => 10 }


    def  is_headsize
      if user.ekip == 'нет' 
        if user.head_size != nil
          return 'размер головы:' + user.head_size
        else
          return 'размер головы: нужно померить'
        end
      end
    end
end