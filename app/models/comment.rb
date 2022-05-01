class Comment < ApplicationRecord
  belongs_to :poem

  validates :body, presence: true, length: {minimum: 5}
end
