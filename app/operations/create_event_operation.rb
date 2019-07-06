class CreateEventOperation

  def initialize(event_params, user_id)
    @event = Event.new(event_description: event_params[:event_description])
  end


  def create_participant
    paticipant = Paticipant.new(
      user_id: user_id
    )
end
