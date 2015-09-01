class CreateTls < ActiveRecord::Migration
  def change
    create_table :tls do |t|
      t.integer :channel_id
      t.integer :user
      t.text :text
      t.integer :sum_fav
      t.integer :sum_pick
      t.integer :sum_asiato
      t.integer :user_id_of_fav
      t.integer :user_id_of_pick
      t.integer :user_id_of_asiato

      t.timestamps null: false
    end
  end
end
