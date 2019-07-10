class DinnerParty < ApplicationRecord
  belongs_to :host, class_name: "User", foreign_key: "user_id"

  has_many :guests
  has_many :users, through: :guests
end
