class IndexEventOperation
  attr_reader :events

  def initialize(user_id)
    @events = Event.joins(
      :participants,
      :location
    ).where('participants.user_id = ?', user_id)
  end

  def results
    # binding.pry
    events.map do |event|
    {
      event_id: event.id,
      event_description: event.description,
      participant_type: event.participants.first.participant_type,
      location_name: event.location.name
    }
    end
  end
end
