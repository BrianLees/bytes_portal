class Participant < ApplicationRecord
  belongs_to :user
  belongs_to :event

  enum role: [:host, :guest]
end
