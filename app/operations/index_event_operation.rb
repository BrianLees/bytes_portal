class IndexEventOperation

  def initialize()
    @event = Event.all
  end

  def results
    {
      event_id: @event.first.id,
      event_description: @event.first.description
    }
  end
end
