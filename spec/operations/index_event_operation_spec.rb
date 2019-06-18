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
       participant_type: participant.participant_type,
       location_name: event.location.name
     }
    ]
  end

  describe '#results' do

    let(:operation) { IndexEventOperation.new(participant.user_id) }

    context 'user has an event' do 
      it 'returns an event listing' do
        expect(operation.results).to eq expected_results
      end
    end
  end
end
