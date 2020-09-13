# frozen_string_literal: true

FactoryBot.define do
  factory :recipe do
    title { 'Title' }
    image_url { 'https://example.com' }
    tags { ['tags'] }
    description { 'Description' }
  end
end
