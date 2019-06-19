class IndexEventOperation
  attr_reader :events

  def initialize(user_id)
    @events = Event.joins(
      :participants,
      :location,
      :menu
    ).where('participants.user_id = ?', user_id)
  end

  def results
    events.map do |event|
    {
      event_id: event.id,
      event_description: event.description,
      event_time: event.event_time,
      participant_type: event.participants.first.participant_type,
      location_name: event.location.name,
      menu_title: event.menu.title
    }
    end
  end
end
