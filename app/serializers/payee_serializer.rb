class PayeeSerializer < ActiveModel::Serializer
  attributes :id, :stripe_id
end
