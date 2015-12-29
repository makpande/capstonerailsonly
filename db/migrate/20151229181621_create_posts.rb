class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :image_url
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
