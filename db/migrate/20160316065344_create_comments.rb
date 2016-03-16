class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commentary
      t.string :user_id
      t.references :post, index: true, foreign_key: true
    end
  end
end
