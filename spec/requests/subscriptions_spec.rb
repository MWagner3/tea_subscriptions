require 'rails_helper'

RSpec.describe 'Subscription Requests' do
  describe 'Post api/v1/customers/subscriptions' do
    it 'adds a subscription to a customer' do
      customer = Customer.create!({id: 1, first_name: 'Bugs', last_name: 'Bunny', email: 'rabbit@gmail.com', address: '321 Troller Rd'})
      customer_params = {
                      customer_id: 1,
                      title: "pink tea",
                      frequency: "weekly",
                      status: "active",
                      price: 50.0
                    }

      expect(customer.subscriptions.count).to eq(0)
      post 'http://localhost:3000/api/v1/customers/subscriptions', params: customer_params
      expect(customer.subscriptions.count).to eq(1)
      expect(customer.subscriptions.first[:title]).to eq("pink tea")
      expect(customer.subscriptions.first[:frequency]).to eq("weekly")
      expect(customer.subscriptions.first[:status]).to eq("active")
      expect(customer.subscriptions.first[:price]).to eq(50.0)
    end
  end

  describe 'Patch api/v1/customers/subscriptions/subscription_id' do
    it 'can update the status of a subscription' do
      customer_1 = Customer.create!({first_name: 'Bugs', last_name: 'Bunny', email: 'rabbit@gmail.com', address: '321 Troll Rd'})
      subscription_1 = Subscription.create!({id: 1, title: 'Green tea', price: 5, status: 0, frequency: 0, customer_id: customer_1.id})
      update_params = {
          "status": "cancelled"
      }

      expect(subscription_1.status).to eq('active')
      binding.pry
      patch 'http://localhost:3000/api/v1/customers/subscriptions/1', params: update_params
      
      expect(subscription_1.status).to eq('cancelled')
    end
  end
end
