class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :stripe_id

  has_many :payees
end
