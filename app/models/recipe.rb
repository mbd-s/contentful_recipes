# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :chef, optional: true
end
