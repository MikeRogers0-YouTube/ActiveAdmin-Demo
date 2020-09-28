class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.references :author, null: false, foreign_key: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
