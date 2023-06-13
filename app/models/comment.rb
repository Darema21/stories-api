class Comment < ApplicationRecord
  belongs_to :story
  validates :name, presence: true, uniquness: true
  validates :content, presence: true, length: { minimum: 5 }
end
