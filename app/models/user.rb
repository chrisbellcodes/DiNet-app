class User < ApplicationRecord
  has_many :guests
  has_many :dinner_parties, through: :guests

  has_secure_password

  validates :name, uniqueness: true

end
