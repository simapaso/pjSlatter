class ChangeColumnsToTl < ActiveRecord::Migration
  def change
  	remove_column :tls, :user, :integer
  	add_column :tls, :user_id, :integer
  	remove_column :users, :myTlId, :integer
  end
end
