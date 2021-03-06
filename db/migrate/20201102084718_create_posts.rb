class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string      :title,    null: false
      t.string      :author,   null: false
      t.text        :content,  null: false
      t.string      :purpose,  null: false
      t.references  :user,     null: false, foreign_key: true
      t.references  :genre,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
