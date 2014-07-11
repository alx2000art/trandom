class AddTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :type_pilot, :string
    add_column :users, :raiting, :integer
    add_column :users, :sex, :integer
    add_column :users, :about, :text
  end
end
