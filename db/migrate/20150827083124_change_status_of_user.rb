class ChangeStatusOfUser < ActiveRecord::Migration
  def change
    change_column_null :users, :followNum, false, 0 
    change_column_null :users, :followerNum, false, 0
    change_column_null :users, :username, false, '名無しさん'
    change_column_null :users, :myText, false, 'まずは「edit」を押して、プロフィールを変更してみよう。'
    add_column :users, :myPickUpTlId, :integer
    add_column :users, :sumOfMyTweet, :integer, null: false, default: 0
    add_column :users, :idOfMyFollow, :integer
    add_column :users, :idOfMyFollower, :integer
  end
end
