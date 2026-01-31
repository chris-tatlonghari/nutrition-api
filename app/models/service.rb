# frozen_string_literal: true

class Service < ApplicationRecord
  include NutritionCalculation

  has_many :food_items

  def self.ransackable_attributes(*) = %w[name]

  def self.ransackable_associations(*) = []
end

# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
