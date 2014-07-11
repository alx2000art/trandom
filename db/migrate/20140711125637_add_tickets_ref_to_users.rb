class AddTicketsRefToUsers < ActiveRecord::Migration
  def change
    change_table  :tickets do |f|
      f.belongs_to  :user
    end
   end
end
