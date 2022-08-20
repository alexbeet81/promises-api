class PromiseList < ApplicationRecord
  belongs_to :user

  has_many :promises
  validates :title, presence: true
  validates :description, presence: true
end
