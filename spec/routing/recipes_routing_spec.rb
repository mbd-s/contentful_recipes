# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecipesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/recipes').to route_to('recipes#index')
    end

    it 'routes to #show' do
      expect(get: '/recipes/1').to route_to('recipes#show', id: '1')
    end
  end
end
