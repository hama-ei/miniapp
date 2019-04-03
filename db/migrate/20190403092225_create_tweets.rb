class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.text :body
      t.string :image
      t.integer :user_id
      t.timestamps null: true
    end
  end
end
