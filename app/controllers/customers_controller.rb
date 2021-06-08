class CustomersController < ApplicationController
    before_action :set_customer, only: [:show, :destroy]

    def index
        @customers = Customer.all
        render json: @customers
    end

    def show
        render json: @customer
    end

    def create
        @customer = Customer.new(customer_params)
        if @customer.save
            render json: @customer, status: :created, location: @customer
        else
            render json: {error: 'Could not create customer!'}, status: :not_created
        end
    end

    def destroy
        @customer.destroy
        render json: {success: 'Customer Deleted'}
    end

    private
    
    def set_customer
        @customer = Customer.find(params[:id])
    end

    def customer_params
        params.require(:customer).permit(:name, :phone_number, :email)
    end
end
