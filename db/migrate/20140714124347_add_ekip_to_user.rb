class AddEkipToUser < ActiveRecord::Migration
  def change
    add_column :users, :ekip, :string
    add_column :users, :head_size, :integer
    add_column :users, :forum_check, :string
    add_column :users, :homesite, :string
    add_column :users, :mob_tel, :string
    add_column :users, :birthday, :date
    add_column :users, :weight, :integer
  end
end
