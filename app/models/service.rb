# frozen_string_literal: true

# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Service < ApplicationRecord
  include NutritionCalculation

  has_many :food_items
end
