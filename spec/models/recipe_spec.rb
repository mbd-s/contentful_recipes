# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { build(:recipe) }
  context 'with valid attributes' do
    it 'is valid' do
      expect(subject).to be_valid
    end
  end

  context 'with empty attributes' do
    subject { Recipe.new }
    it 'is valid' do
      expect(subject).to be_valid
    end
  end
end
