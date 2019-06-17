require 'rails_helper'

RSpec.describe IndexEventOperation do


  let! :user_event do
    create :user_event
  end

  let! :event do
    user_event.event
  end

  let :expected_results do
     { 
       event_id: event.id,
       event_description: event.description,
       participant_type: user_event.participant_type,
       location: event.location.description
     }
  end

  describe '#results' do

    let(:operation) { IndexEventOperation.new() }

    context 'user has an event' do 
      it 'returns an event listing' do
        expect(operation.results).to eq expected_results
      end
    end
  end
end
