class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :email_address,
             :profile_pic
end
