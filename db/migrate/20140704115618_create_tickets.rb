class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :status
      t.string :funrider
      t.string :pilot
      t.text :about
      t.integer :roll1
      t.integer :roll2
      t.integer :roll3
      t.text :description

      t.timestamps
    end
  end
end
