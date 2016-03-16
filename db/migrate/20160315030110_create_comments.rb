class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.string :content
      t.references :post_id, :user_id, index: true, foreign_key: true
      t.timestamps
    end
  end
end
