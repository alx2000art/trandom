class AddActionDayToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :action_day, :date
  end
end
