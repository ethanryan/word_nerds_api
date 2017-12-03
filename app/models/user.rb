class User < ApplicationRecord
  has_secure_password
  has_many :stories

  validates :name,  presence: true
  validates :password,  presence: true #adding this cuz of rspec test

end
