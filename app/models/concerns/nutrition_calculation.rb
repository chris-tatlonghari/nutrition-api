# frozen_string_literal: true

module NutritionCalculation
  extend ActiveSupport::Concern

  TOTAL_FAT_G_RECOMMENDED_DV = 78.0
  SAT_FAT_G_RECOMMENDED_DV = 20.0
  CHOLESTEROL_MG_RECOMMENDED_DV = 300.0
  SODIUM_MG_RECOMMENDED_DV = 2300.0
  TOTAL_CARBS_G_RECOMMENDED_DV = 275.0
  DIETARY_FIBER_G_RECOMMENDED_DV = 28.0

  def nutrition(food_item_ids)
    items = food_items.where(id: food_item_ids)

    total_fat = items.sum { |item| item.fat_g || 0 }.round
    sat_fat = items.sum { |item| item.saturated_fat_g || 0 }.round
    cholesterol = items.sum { |item| item.cholesterol_mg || 0 }.round
    sodium = items.sum { |item| item.sodium_mg || 0 }
    total_carbs = items.sum { |item| item.carbs_g || 0 }.round
    dietary_fiber = items.sum { |item| item.fiber_g || 0 }.round

    {
      calories: items.sum { |item| item.calories || 0 },
      calories_from_fat: items.sum { |item| item.calories_from_fat || 0 },
      total_fat: total_fat,
      total_fat_dv_pct: daily_value_pct(total_fat, TOTAL_FAT_G_RECOMMENDED_DV),
      sat_fat: sat_fat,
      sat_fat_dv_pct: daily_value_pct(sat_fat, SAT_FAT_G_RECOMMENDED_DV),
      trans_fat: 0,
      cholesterol: cholesterol,
      cholesterol_dv_pct: daily_value_pct(cholesterol, CHOLESTEROL_MG_RECOMMENDED_DV),
      sodium: sodium,
      sodium_dv_pct: daily_value_pct(sodium, SODIUM_MG_RECOMMENDED_DV),
      total_carbs: total_carbs,
      total_carbs_dv_pct: daily_value_pct(total_carbs, TOTAL_CARBS_G_RECOMMENDED_DV),
      dietary_fiber: dietary_fiber,
      dietary_fiber_dv_pct: daily_value_pct(dietary_fiber, DIETARY_FIBER_G_RECOMMENDED_DV),
      total_sugars: items.sum { |item| item.sugar_g || 0 }.round,
      protein: items.sum { |item| item.protein_g || 0 }.round
    }
  end

  private

  def daily_value_pct(amount, daily_value)
    return 0 if daily_value.to_f <= 0

    ((amount.to_f / daily_value.to_f) * 100).round
  end
end
