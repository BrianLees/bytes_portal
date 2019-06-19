class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :event

  enum participant_type: [:host, :guest]
end
