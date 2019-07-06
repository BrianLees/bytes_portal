require 'rails_helper'

RSpec.describe CreateEventOperation do

  let! :participant do
    create :participant
  end

  let! :event do
    participant.event
  end

  let :event_params do
    [
      {
       event_id: event.id,
       event_description: event.description,
       event_time: event.event_time,
       participant_type: participant.participant_type,
       location_name: event.location.name,
       menu_title: event.menu.title
      }
    ]

    describe '#create_event' do

      context 'an event has params'
end
