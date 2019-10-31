class UserSerializer < ActiveModel::Serializer
  attributes :id, :email_address, :display_name
end
