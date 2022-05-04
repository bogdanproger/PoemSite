class Poem < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true, length: {minimum:2}
  belongs_to :category
end
