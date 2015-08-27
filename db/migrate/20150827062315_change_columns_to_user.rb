class ChangeColumnsToUser < ActiveRecord::Migration
  def change
    add_column :users, :img, :binary
    add_column :users, :followNum, :integer
    add_column :users, :followerNum, :integer
    add_column :users, :myText, :text
    add_column :users, :myTlId, :integer
    add_column :users, :myFavTlId, :integer
    add_column :users, :myAsiatoTlId, :integer
      
  end
end
