class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.date         :birthday
      t.integer      :gender
      t.references   :genre, foreign_key: true
      t.references   :user, foreign_key: true
      t.timestamps
    end
  end
end
