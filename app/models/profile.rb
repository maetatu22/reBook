class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  enum gender: { man: 0, woman: 1, other: 2}

  belongs_to :user
end
