# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  let(:recipes) do
    [create(:chef_with_recipe).recipes.first,
     create(:recipe)]
  end
  before(:each) do
    assign(:recipes, recipes)
  end

  it 'renders a list of recipes with images' do
    render
    assert_select 'h2', text: 'Title'.to_s, count: 2
    assert_select 'img' do
      assert_select '[src=?]', 'https://example.com'
    end
  end
end
