class PhonesController < ApplicationController
    before_action :set_customer
    before_action :set_phone, only: [:show, :destroy]

    def index
        @phones = Phone.all
        render json: @phones
    end

    def show
        render json: @phone
    end

    def create
        @phone = @customer.phones.new(phone_params)
        render json: @phone
    end

    def destroy
        @phone.destroy
        render json: {success: 'Phone Deleted'}
    end

    

    private

    def set_phone
        @phone = Phone.find(params[:id])
    end

    def set_customer
       @customer = Customer.find_by_id(params[:customer_id])
    end

    def phone_params
        params.require(:phone).permit(:customer_id, :phone_type, :purchase_date)
    end
end
