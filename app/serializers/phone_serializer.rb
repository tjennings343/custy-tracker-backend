class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :phone_type, :purchase_date
end
