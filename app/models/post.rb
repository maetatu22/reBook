class Post < ApplicationRecord
  enum purpose: { review: 0, output: 1 }

  with_options presence: true do
    validates :title
    validates :author
    validates :content
    validates :genre_id, numericality: { other_than: 1 }
    validates :purpose
  end

  belongs_to :genre
  belongs_to :user
end
