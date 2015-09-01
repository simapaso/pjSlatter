class CreateChannelTwitters < ActiveRecord::Migration
  def change
    create_table :channel_twitters do |t|
      t.integer :twitter_id
      t.integer :channel_id

      t.timestamps null: false
    end
  end
end
