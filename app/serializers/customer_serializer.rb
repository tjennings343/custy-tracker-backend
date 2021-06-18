class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email
  has_many :phones
end
