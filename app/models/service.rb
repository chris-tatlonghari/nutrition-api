# frozen_string_literal: true

class Service < ApplicationRecord
  has_many :food_items
end