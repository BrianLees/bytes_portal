require 'rails_helper'

RSpec.describe IndexEventOperation do

  let! :event do
    create :event
  end

  let :expected_results do
     { 
       event_id: event.id,
       event_description: event.description
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
