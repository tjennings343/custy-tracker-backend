class Customer < ApplicationRecord
    has_many :phones
    validates :name, :phone_number, :email, presence: true
    
end
