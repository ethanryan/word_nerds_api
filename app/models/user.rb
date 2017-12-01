class User < ApplicationRecord
  has_secure_password
  has_many :stories

  validates :name,  presence: true

end
