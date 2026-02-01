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
  belongs_to :service

  validates :name, presence: true, uniqueness: { scope: :service_id }
  validates :serving_size, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :calories, numericality: { greater_than_or_equal_to: 0, only_integer: true, allow_nil: true }
  validates :calories_from_fat, numericality: { greater_than_or_equal_to: 0, only_integer: true, allow_nil: true }
  validates :protein_g, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :carbs_g, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :fat_g, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :saturated_fat_g, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :fiber_g, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :sugar_g, numericality: { greater_than_or_equal_to: 0, allow_nil: true }
  validates :sodium_mg, numericality: { greater_than_or_equal_to: 0, only_integer: true, allow_nil: true }
  validates :cholesterol_mg, numericality: { greater_than_or_equal_to: 0, only_integer: true, allow_nil: true }

  def self.ransackable_attributes(*) = %w[name calories protein_g sodium_mg carbs_g]

  def self.ransackable_associations(*) = []
end
