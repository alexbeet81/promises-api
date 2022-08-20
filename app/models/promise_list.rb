class PromiseList < ApplicationRecord
  belongs_to :user

  has_many :promises
end
