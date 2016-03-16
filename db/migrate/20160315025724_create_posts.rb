class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :content
      t.string :author_id
      t.references :author, index: true, foreign_key: true
      t.timestamp
    end
  end
end
