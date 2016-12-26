class Group < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  has_many :groups
  has_many :group_relationhips
  has_many :members, through: :group_relationships, source: :user
   validates :title, presence: true
end
