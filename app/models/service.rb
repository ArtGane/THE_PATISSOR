class Service < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates :description, presence: true
  validates :price_per_hour, presence: true
end
