require 'rails_helper'

RSpec.describe IndexEventOperation do

  let! :participant do
    create :participant
  end

  let! :event do
    participant.event
  end

  let :expected_results do
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
  end

  describe '#results' do

    context 'user has an event' do 
      let(:operation) { IndexEventOperation.new(participant.user_id) }

      it 'returns an event listing' do
        expect(operation.results).to eq expected_results
      end
    end

    context 'user has no events' do
      let(:empty_user_id) { create :user }
      let(:empty_operation) { IndexEventOperation.new(empty_user_id) }

      it 'returns an empty array' do
        expect(empty_operation.results).to eq []
      end
    end
  end
end
