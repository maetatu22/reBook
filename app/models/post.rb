class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  enum purpose: { review: 0, output: 1 }

  with_options presence: true do
    validates :title
    validates :author
    validates :content
    validates :genre_id, numericality: { other_than: 1 }
    validates :purpose
  end

  belongs_to :user
end
