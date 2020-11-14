class Profile < ApplicationRecord
  enum gender: { man: 0, woman: 1, other: 2}

  belongs_to :user
end
