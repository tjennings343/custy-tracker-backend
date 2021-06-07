class Phone < ApplicationRecord
    belongs_to :customer
    validates :phone_type, presence: true
end
