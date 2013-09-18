class CreatePosts < ActiveRecord::Migration
  def change 
    create_table :posts do |t|
      t.string :title
      t.string :email
      t.string :edit_key
      t.string :price
      t.text :content
      t.integer :category_id
      t.timestamps
    end
  end
end
