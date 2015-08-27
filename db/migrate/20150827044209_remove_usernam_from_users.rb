class RemoveUsernamFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :usernam, :string
  end
end
