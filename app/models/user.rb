class User < ApplicationRecord
  has_many :guests
  has_many :dinner_parties, through: :guests
end
