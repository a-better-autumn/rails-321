class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :title, presence: true

  has_many :group_realtionships
  has_many :members, through: :group_realtionships, source: :user
end
