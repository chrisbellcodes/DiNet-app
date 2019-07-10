class User < ApplicationRecord

  has_many :hosted_parties, class_name: "DinnerParty", foreign_key: "user_id"
  has_many :guests
  has_many :dinner_parties, through: :guests

  has_secure_password

  validates :name, uniqueness: true

end
