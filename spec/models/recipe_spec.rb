# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { build(:recipe) }
  context 'with valid attributes' do
    context 'without a related chef' do
      it 'is valid' do
        expect(subject).to be_valid
      end
    end
    context 'with a related chef' do
      let(:chef) { create(:chef_with_recipe) }
      it 'is valid' do
        expect(chef.recipes.first).to be_valid
      end
    end
  end

  context 'with empty attributes' do
    subject { Recipe.new }
    it 'is valid' do
      expect(subject).to be_valid
    end
  end
end
