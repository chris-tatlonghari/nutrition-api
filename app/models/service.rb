# frozen_string_literal: true

class Service < ApplicationRecord
  include NutritionCalculation

  CATEGORY_EMOJIS = {
    fast_food: "🍔",
    cafe: "☕",
    restaurant: "🍽️",
    healthy: "🥗",
    mexican: "🌯",
    other: "🍴"
  }.freeze

  enum category: {
    fast_food: "fast_food",
    cafe: "cafe",
    restaurant: "restaurant",
    healthy: "healthy",
    mexican: "mexican",
    other: "other"
  }, _default: "other"

  has_many :food_items, dependent: :restrict_with_error

  validates :name, presence: true, uniqueness: true
  validates :category, presence: true

  def self.ransackable_attributes(*) = %w[name category]

  def self.ransackable_associations(*) = []
end

# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  category   :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_services_on_category  (category)
#
