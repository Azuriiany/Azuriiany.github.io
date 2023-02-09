class Post < ApplicationRecord
  validates :tags, presence: true
  validates :owner, presence: true
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
end
