class CustomersController < ApplicationController
  def index
		@customers = Customer.all
		render json: @customers
	end

	def show
	end

	def create
	end

	def update
	end
end
