class AddDateToPost < ActiveRecord::Migration
  def change
    add_column :posts, :data_action, :datetime
  end
end
