class Service < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :price_per_hour, presence: true
end
