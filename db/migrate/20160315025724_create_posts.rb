class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :username
      t.string :content
      t.integer :user_id
      t.references :user, index: true, foreign_key: true
      t.timestamp
    end
  end
end
