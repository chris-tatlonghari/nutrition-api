# frozen_string_literal: true

moes = Service.find_or_create_by!(name: "Moe's") do |service|
  service.category = :mexican
end

items = [
  {
    name: "Adobo Chicken for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 148, protein_g: 19, carbs_g: 2, fat_g: 8, saturated_fat_g: 3,
    fiber_g: 0, sugar_g: 0, sodium_mg: 379, cholesterol_mg: 77
  },
  {
    name: "Bacon Pieces for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 99, protein_g: 10, carbs_g: 1, fat_g: 7, saturated_fat_g: 3,
    fiber_g: 1, sugar_g: 1, sodium_mg: 386, cholesterol_mg: 28
  },
  {
    name: "Black Beans for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 129, protein_g: 8, carbs_g: 22, fat_g: 2, saturated_fat_g: 1,
    fiber_g: 10, sugar_g: 1, sodium_mg: 349, cholesterol_mg: 0
  },
  {
    name: "Black Olives for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 37, protein_g: 0, carbs_g: 2, fat_g: 4, saturated_fat_g: 1,
    fiber_g: 0, sugar_g: 0, sodium_mg: 175, cholesterol_mg: 0
  },
  {
    name: "Chipotle Ranch for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 71, protein_g: 1, carbs_g: 1, fat_g: 8, saturated_fat_g: 2,
    fiber_g: 0, sugar_g: 1, sodium_mg: 72, cholesterol_mg: 4
  },
  {
    name: "Chopped Cilantro for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 1, protein_g: 0, carbs_g: 0, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 0, sugar_g: 0, sodium_mg: 2, cholesterol_mg: 0
  },
  {
    name: "Cilantro Lime Rice for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 338, protein_g: 8, carbs_g: 66, fat_g: 3, saturated_fat_g: 2,
    fiber_g: 2, sugar_g: 2, sodium_mg: 992, cholesterol_mg: 2
  },
  {
    name: "Corn Pico for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 39, protein_g: 1, carbs_g: 7, fat_g: 2, saturated_fat_g: 0,
    fiber_g: 1, sugar_g: 1, sodium_mg: 162, cholesterol_mg: 0
  },
  {
    name: "Diced Cucumbers for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 4, protein_g: 1, carbs_g: 1, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 1, sugar_g: 1, sodium_mg: 0, cholesterol_mg: 0
  },
  {
    name: "Diced Onions for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 2, protein_g: 0, carbs_g: 2, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 0, sugar_g: 1, sodium_mg: 1, cholesterol_mg: 0
  },
  {
    name: "Diced Tomatoes for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 13, protein_g: 1, carbs_g: 3, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 1, sugar_g: 2, sodium_mg: 2, cholesterol_mg: 0
  },
  {
    name: "Double Adobo Chicken for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 296, protein_g: 38, carbs_g: 4, fat_g: 16, saturated_fat_g: 6,
    fiber_g: 0, sugar_g: 0, sodium_mg: 758, cholesterol_mg: 154
  },
  {
    name: "Double Fish for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 212, protein_g: 40, carbs_g: 2, fat_g: 8, saturated_fat_g: 2,
    fiber_g: 2, sugar_g: 2, sodium_mg: 106, cholesterol_mg: 92
  },
  {
    name: "Double Ground Beef for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 248, protein_g: 22, carbs_g: 10, fat_g: 14, saturated_fat_g: 6,
    fiber_g: 4, sugar_g: 4, sodium_mg: 840, cholesterol_mg: 56
  },
  {
    name: "Double Organic Tofu for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 216, protein_g: 20, carbs_g: 4, fat_g: 16, saturated_fat_g: 4,
    fiber_g: 4, sugar_g: 2, sodium_mg: 532, cholesterol_mg: 0
  },
  {
    name: "Double Pork Carnitas for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 262, protein_g: 34, carbs_g: 2, fat_g: 16, saturated_fat_g: 6,
    fiber_g: 0, sugar_g: 2, sodium_mg: 1022, cholesterol_mg: 108
  },
  {
    name: "Double Steak for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 208, protein_g: 30, carbs_g: 6, fat_g: 10, saturated_fat_g: 2,
    fiber_g: 2, sugar_g: 0, sodium_mg: 498, cholesterol_mg: 72
  },
  {
    name: "Double White Meat Chicken for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 260, protein_g: 46, carbs_g: 0, fat_g: 8, saturated_fat_g: 2,
    fiber_g: 0, sugar_g: 0, sodium_mg: 340, cholesterol_mg: 150
  },
  {
    name: "Fish for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 106, protein_g: 20, carbs_g: 1, fat_g: 4, saturated_fat_g: 1,
    fiber_g: 1, sugar_g: 1, sodium_mg: 53, cholesterol_mg: 46
  },
  {
    name: "Fresh Jalapenos for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 3, protein_g: 0, carbs_g: 1, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 1, sugar_g: 2, sodium_mg: 0, cholesterol_mg: 0
  },
  {
    name: "Grilled Mushrooms for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 25, protein_g: 1, carbs_g: 2, fat_g: 2, saturated_fat_g: 1,
    fiber_g: 1, sugar_g: 1, sodium_mg: 45, cholesterol_mg: 0
  },
  {
    name: "Grilled Onions for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 23, protein_g: 1, carbs_g: 3, fat_g: 2, saturated_fat_g: 1,
    fiber_g: 1, sugar_g: 2, sodium_mg: 27, cholesterol_mg: 0
  },
  {
    name: "Grilled Peppers for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 17, protein_g: 1, carbs_g: 2, fat_g: 1, saturated_fat_g: 1,
    fiber_g: 1, sugar_g: 1, sodium_mg: 28, cholesterol_mg: 0
  },
  {
    name: "Ground Beef for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 124, protein_g: 11, carbs_g: 5, fat_g: 7, saturated_fat_g: 3,
    fiber_g: 2, sugar_g: 2, sodium_mg: 420, cholesterol_mg: 28
  },
  {
    name: "Guacamole for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 53, protein_g: 1, carbs_g: 4, fat_g: 5, saturated_fat_g: 1,
    fiber_g: 2, sugar_g: 1, sodium_mg: 194, cholesterol_mg: 0
  },
  {
    name: "Lime Wedge for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 3, protein_g: 0, carbs_g: 1, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 0, sugar_g: 0, sodium_mg: 0, cholesterol_mg: 0
  },
  {
    name: "Organic Tofu for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 108, protein_g: 10, carbs_g: 2, fat_g: 8, saturated_fat_g: 2,
    fiber_g: 2, sugar_g: 1, sodium_mg: 266, cholesterol_mg: 0
  },
  {
    name: "Pickled Jalapenos for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 5, protein_g: 0, carbs_g: 1, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 0, sugar_g: 0, sodium_mg: 433, cholesterol_mg: 0
  },
  {
    name: "Pico De Gallo for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 16, protein_g: 1, carbs_g: 4, fat_g: 1, saturated_fat_g: 0,
    fiber_g: 1, sugar_g: 1, sodium_mg: 223, cholesterol_mg: 0
  },
  {
    name: "Pinto Beans for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 120, protein_g: 8, carbs_g: 21, fat_g: 1, saturated_fat_g: 1,
    fiber_g: 10, sugar_g: 0, sodium_mg: 145, cholesterol_mg: 0
  },
  {
    name: "Pinto Beans for Burrito", serving_size: 1, serving_unit: "serving",
    calories: 120, protein_g: 8, carbs_g: 21, fat_g: 1, saturated_fat_g: 1,
    fiber_g: 10, sugar_g: 0, sodium_mg: 145, cholesterol_mg: 0
  },
  {
    name: "Pork Carnitas for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 131, protein_g: 17, carbs_g: 1, fat_g: 8, saturated_fat_g: 3,
    fiber_g: 0, sugar_g: 1, sodium_mg: 511, cholesterol_mg: 54
  },
  {
    name: "Queso for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 136, protein_g: 6, carbs_g: 6, fat_g: 11, saturated_fat_g: 7,
    fiber_g: 0, sugar_g: 0, sodium_mg: 493, cholesterol_mg: 34
  },
  {
    name: "Quinoa for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 360, protein_g: 12, carbs_g: 60, fat_g: 12, saturated_fat_g: 0,
    fiber_g: 12, sugar_g: 12, sodium_mg: 840, cholesterol_mg: 0
  },
  {
    name: "Seasoned Rice for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 300, protein_g: 6, carbs_g: 66, fat_g: 2, saturated_fat_g: 2,
    fiber_g: 2, sugar_g: 2, sodium_mg: 380, cholesterol_mg: 0
  },
  {
    name: "Shredded Cheese for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 121, protein_g: 8, carbs_g: 2, fat_g: 10, saturated_fat_g: 6,
    fiber_g: 0, sugar_g: 0, sodium_mg: 198, cholesterol_mg: 33
  },
  {
    name: "Shredded Lettuce for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 5, protein_g: 1, carbs_g: 1, fat_g: 0, saturated_fat_g: 0,
    fiber_g: 1, sugar_g: 1, sodium_mg: 4, cholesterol_mg: 0
  },
  {
    name: "Sour Cream for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 68, protein_g: 2, carbs_g: 2, fat_g: 6, saturated_fat_g: 4,
    fiber_g: 0, sugar_g: 2, sodium_mg: 17, cholesterol_mg: 23
  },
  {
    name: "Southwest Vinaigrette for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 77, protein_g: 0, carbs_g: 2, fat_g: 8, saturated_fat_g: 2,
    fiber_g: 0, sugar_g: 0, sodium_mg: 212, cholesterol_mg: 0
  },
  {
    name: "Steak for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 104, protein_g: 15, carbs_g: 3, fat_g: 5, saturated_fat_g: 1,
    fiber_g: 1, sugar_g: 0, sodium_mg: 249, cholesterol_mg: 36
  },
  {
    name: "White Meat Chicken for Bowl", serving_size: 1, serving_unit: "serving",
    calories: 130, protein_g: 23, carbs_g: 0, fat_g: 4, saturated_fat_g: 1,
    fiber_g: 0, sugar_g: 0, sodium_mg: 170, cholesterol_mg: 75
  }
]

items.each do |attrs|
  moes.food_items.find_or_create_by!(name: attrs[:name]) do |item|
    item.assign_attributes(attrs.except(:name))
  end
end

puts "Successfully added #{items.count} Moe's bowl items!"
