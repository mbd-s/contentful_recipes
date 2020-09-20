# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'recipes/show', type: :view do
  let(:recipe) { create(:recipe) }
  before { assign(:recipe, recipe) }

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(recipe.title)
    expect(rendered).to match(recipe.image_url)
    expect(rendered).to match(recipe.tags.join(', '))
    expect(rendered).to match(recipe.description)
    expect(rendered).to match(recipe.chef.name)
  end
end
