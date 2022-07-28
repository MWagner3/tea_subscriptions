class Api::V1::Customers::SubscriptionsController < ApplicationController
  before_action :set_customer, only: [:index, :create]

  def create
    subscription = @customer.subscriptions.create!(subscription_params)
    render json: SubscriptionSerializer.new(subscription), status: 201
  end

  private

  def subscription_params
    params.permit(:title, :price, :status, :frequency)
  end

  def set_customer
    @customer = Customer.find(params[:customer_id])
  end
end
