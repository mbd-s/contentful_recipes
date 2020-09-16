# frozen_string_literal: true

class RecipesController < ApplicationController
  include ApplicationHelper
  before_action :set_recipes, only: %i[index]
  around_action :catch_not_found
  before_action :set_recipe, only: %i[show]

  def index
    @recipes = Recipe.all
  end

  def show; end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def set_recipes
    recipe_fields_collection = contentful.entries(content_type: 'recipe').map(&:fields)
    load_or_create(recipe_fields_collection)
  end

  def load_or_create(recipe_fields_collection)
    recipe_fields_collection.each do |fields_collection|
      RecipeBuilder.new(fields_collection).perform
    end
  end

  def catch_not_found
    yield
  rescue ActiveRecord::RecordNotFound
    redirect_to root_url
  end
end
