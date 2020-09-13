# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'recipes/index', type: :view do
  let(:url) { 'https://example.com' }
  let(:tags) { ['tag'] }
  before(:each) do
    assign(:recipes, [
             Recipe.create!(
               title: 'Title',
               image_url: url,
               tags: tags,
               description: 'MyText'
             ),
             Recipe.create!(
               title: 'Title',
               image_url: url,
               tags: tags,
               description: 'MyText'
             )
           ])
  end

  it 'renders a list of recipes with images' do
    render
    assert_select 'h2', text: 'Title'.to_s, count: 2
    assert_select 'img' do
      assert_select '[src=?]', url
    end
  end
end
