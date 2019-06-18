class Event < ApplicationRecord
  belongs_to :location
  has_many :participants
  has_many :users, through: :participants
end
