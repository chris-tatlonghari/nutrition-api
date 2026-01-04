# frozen_string_literal: true

class Service < ApplicationRecord
  has_many :food_items

  def nutrition(food_item_ids)
    items = food_items.where(id: food_item_ids)

    {
      calories: items.sum { |item| item.calories || 0 },
      calories_from_fat: items.sum { |item| item.calories_from_fat || 0 },
      total_fat: items.sum { |item| item.fat_g || 0 }.round,
      total_fat_dv_pct: 0,
      sat_fat: items.sum { |item| item.saturated_fat_g || 0 }.round,
      sat_fat_dv_pct: 0,
      trans_fat: 0,
      cholesterol: items.sum { |item| item.cholesterol_mg || 0 }.round,
      cholesterol_dv_pct: 0,
      sodium: items.sum { |item| item.sodium_mg || 0 },
      sodium_dv_pct: 0,
      total_carbs: items.sum { |item| item.carbs_g || 0 }.round,
      total_carbs_dv_pct: 0,
      dietary_fiber: items.sum { |item| item.fiber_g || 0 }.round,
      dietary_fiber_dv_pct: 0,
      total_sugars: items.sum { |item| item.sugar_g || 0 }.round,
      protein: items.sum { |item| item.protein_g || 0 }.round
    }
  end
end
