class Event < ApplicationRecord
  belongs_to :location, optional: true
  belongs_to :menu, optional: true
  has_many :participants
  has_many :users, through: :participants
end
