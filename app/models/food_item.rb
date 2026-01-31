# frozen_string_literal: true

# == Schema Information
#
# Table name: food_items
#
#  id                :integer          not null, primary key
#  calories          :integer
#  calories_from_fat :integer
#  carbs_g           :decimal(6, 2)
#  cholesterol_mg    :integer
#  fat_g             :decimal(6, 2)
#  fiber_g           :decimal(6, 2)
#  name              :string           not null
#  protein_g         :decimal(6, 2)
#  saturated_fat_g   :decimal(6, 2)
#  serving_size      :decimal(8, 2)
#  serving_unit      :string
#  sodium_mg         :integer
#  sugar_g           :decimal(6, 2)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  service_id        :integer          not null
#
# Indexes
#
#  index_food_items_on_service_id           (service_id)
#  index_food_items_on_service_id_and_name  (service_id,name) UNIQUE
#
# Foreign Keys
#
#  service_id  (service_id => services.id)
#
class FoodItem < ApplicationRecord
  def self.ransackable_attributes(*) = %w[name calories protein_g sodium_mg carbs_g]

  def self.ransackable_associations(*) = []
end
