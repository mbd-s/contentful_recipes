# frozen_string_literal: true

Rails.application.routes.draw do
  root 'recipes#index'
  resources :recipes, only: %i[index show]
  match '*path', to: 'recipes#index', via: :all
end
