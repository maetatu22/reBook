class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  with_options presence: true do
    validates :title
    validates :author
    validates :content
    validates :genre_id, numericality: { other_than: 1 }
    validates :purpose
  end

  belongs_to :user
end
