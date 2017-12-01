class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :password_digest,
             :email_address,
             :profile_pic,
             :created_at,
             :updated_at
end
