require "rails_helper"
require 'jwt'

describe V1::CustomersController , :type => :api do
  context 'listing users' do
    let!(:customers) { [ Customer.create ] }

    it "lists all users" do
      get 'v1/customers'
      expect(json).to eq( JSON.parse customers.to_json )
    end
  end
end
