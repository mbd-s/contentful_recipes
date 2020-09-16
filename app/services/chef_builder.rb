# frozen_string_literal: true

class ChefBuilder
  attr_reader :chef_fields, :recipe

  def initialize(chef_fields, recipe)
    @chef_fields = chef_fields
    @recipe = recipe
  end

  def perform
    recipe.chef = Chef.find_or_create_by(
      name: chef_fields.name
    )
    recipe.save
  end
end
