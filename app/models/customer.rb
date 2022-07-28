class Customer < ApplicationRecord
  validates :email, uniqueness: true
  validates_presence_of :first_name, :last_name, :email, :address

  has_many :subscriptions
end
