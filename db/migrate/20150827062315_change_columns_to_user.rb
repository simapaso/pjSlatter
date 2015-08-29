class ChangeColumnsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :img, :binary
    remove_column :users, :username, :string
    add_column :users, :username, :string,　null: false, default: '名無しさん'
    add_column :users, :followNum, :integer, null: false, default: 0
    add_column :users, :followerNum, :integer, null: false, default: 0
    add_column :users, :myText, :text, null: false, default: 'まずは「edit」を押して、プロフィールを変更してみよう。'
    add_column :users, :sumOfMyTweet, :integer, null: false, default: 0
    add_column :users, :myTlId, :integer
    add_column :users, :myFavTlId, :integer
    add_column :users, :myAsiatoTlId, :integer
    add_column :users, :myPickUpTlId, :integer
    add_column :users, :idOfMyFollow, :integer
    add_column :users, :idOfMyFollower, :integer
  end
end
