class User < ApplicationRecord
  has_secure_password
  has_many :stories
  #test comment2
end
