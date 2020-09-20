# frozen_string_literal: true

FactoryBot.define do
  factory :chef do
    name { 'John Doe' }

    factory :chef_with_recipe do
      after(:create) do |chef|
        create(:recipe, chef: chef)
      end
    end
  end
end
