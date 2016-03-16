class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :content
      t.references :author, index: true, foreign_key: true
      t.timestamps
    end
  end
end
