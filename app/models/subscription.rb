class Subscription < ApplicationRecord
  enum status: { active: 0, cancelled: 1 }
  enum frequency: { weekly: 0, monthly: 1, annually: 2 }

  validates_presence_of :title, :price, :status, :frequency
  validates_numericality_of :price

  belongs_to :customer
end
