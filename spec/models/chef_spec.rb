# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Chef, type: :model do
  subject { build(:chef) }
  context 'with valid attributes' do
    it 'is valid' do
      expect(subject).to be_valid
    end
  end

  context 'with empty attributes' do
    subject { build(:chef, name: nil) }
    it 'is valid' do
      expect(subject).to be_valid
    end
  end
end
