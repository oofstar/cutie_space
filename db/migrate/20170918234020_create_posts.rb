class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :body, null: false
      t.string :media_url
      t.integer :cuty_id

      t.timestamps null: false
    end
  end
end
