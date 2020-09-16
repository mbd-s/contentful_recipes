# frozen_string_literal: true

class RecipeBuilder
  attr_reader :recipe_fields

  def initialize(recipe_fields)
    @recipe_fields = recipe_fields
  end

  def perform
    recipe = Recipe.where(
      title: recipe_fields[:title],
      image_url: scrubbed_url(recipe_fields[:photo].url),
      tags: recipe_fields[:tags].try(:map, &:name),
      description: recipe_fields[:description]
    ).first_or_create

    assign_chef(recipe)
  end

  private

  def scrubbed_url(string)
    protocol = 'https'
    "#{protocol}://#{string.gsub('//', '')}"
  end

  def assign_chef(recipe)
    ChefBuilder.new(recipe_fields[:chef], recipe).perform if recipe_fields[:chef]
  end
end
