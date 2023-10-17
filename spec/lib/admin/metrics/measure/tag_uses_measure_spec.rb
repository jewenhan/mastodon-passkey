# frozen_string_literal: true

require 'rails_helper'

describe Admin::Metrics::Measure::TagUsesMeasure do
  subject(:measure) { described_class.new(start_at, end_at, params) }

  let!(:tag) { Fabricate(:tag) }

  let(:start_at) { 2.days.ago }
  let(:end_at)   { Time.now.utc }
  let(:params) { ActionController::Parameters.new(id: tag.id) }

  describe '#data' do
    it 'runs data query without error' do
      expect { measure.data }.to_not raise_error
    end
  end
end
