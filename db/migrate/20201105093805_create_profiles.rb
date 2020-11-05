class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.date         :birthday
      t.integer      :gender
      t.integer      :fav_genre1_id
      t.integer      :fav_genre2_id
      t.integer      :fav_genre3_id
      t.references   :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
