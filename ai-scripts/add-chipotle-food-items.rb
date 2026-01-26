chipotle = Service.find_by!(name: "Chipotle")

items = [
  {
    name: "Flour Tortilla (burrito)", serving_size: 1, serving_unit: "ea",
    calories: 320, calories_from_fat: 80, fat_g: 9, saturated_fat_g: 0.5,
    cholesterol_mg: 0, sodium_mg: 600, carbs_g: 50, fiber_g: 3, sugar_g: 0, protein_g: 8
  },
  {
    name: "Flour Tortilla (taco)", serving_size: 1, serving_unit: "ea",
    calories: 80, calories_from_fat: 25, fat_g: 2.5, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 160, carbs_g: 13, fiber_g: 0.5, # "<1"
    sugar_g: 0, protein_g: 2
  },
  {
    name: "Crispy Corn Tortilla", serving_size: 1, serving_unit: "ea",
    calories: 70, calories_from_fat: 25, fat_g: 3, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 0, carbs_g: 10, fiber_g: 1, sugar_g: 0, protein_g: 1
  },
  {
    name: "Black Beans", serving_size: 4, serving_unit: "oz",
    calories: 130, calories_from_fat: 15, fat_g: 1.5, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 210, carbs_g: 22, fiber_g: 7, sugar_g: 2, protein_g: 8
  },
  {
    name: "Pinto Beans", serving_size: 4, serving_unit: "oz",
    calories: 130, calories_from_fat: 10, fat_g: 1.5, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 210, carbs_g: 21, fiber_g: 8, sugar_g: 1, protein_g: 8
  },
  {
    name: "Barbacoa", serving_size: 4, serving_unit: "oz",
    calories: 170, calories_from_fat: 60, fat_g: 7, saturated_fat_g: 2.5,
    cholesterol_mg: 65, sodium_mg: 530, carbs_g: 2, fiber_g: 1, sugar_g: 0, protein_g: 24
  },
  {
    name: "Carnitas", serving_size: 4, serving_unit: "oz",
    calories: 210, calories_from_fat: 120, fat_g: 12, saturated_fat_g: 7,
    cholesterol_mg: 65, sodium_mg: 450, carbs_g: 0, fiber_g: 0, sugar_g: 0, protein_g: 23
  },
  {
    name: "Sofritas", serving_size: 4, serving_unit: "oz",
    calories: 150, calories_from_fat: 80, fat_g: 10, saturated_fat_g: 1.5,
    cholesterol_mg: 0, sodium_mg: 560, carbs_g: 9, fiber_g: 3, sugar_g: 5, protein_g: 8
  },
  {
    name: "Tomatillo-Green Chili Salsa", serving_size: 2, serving_unit: "fl oz",
    calories: 15, calories_from_fat: 5, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 260, carbs_g: 4, fiber_g: 0, sugar_g: 2, protein_g: 0
  },
  {
    name: "Tomatillo-Red Chili Salsa", serving_size: 2, serving_unit: "fl oz",
    calories: 30, calories_from_fat: 5, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 500, carbs_g: 4, fiber_g: 1, sugar_g: 0, protein_g: 0
  },
  {
    name: "Cheese", serving_size: 1, serving_unit: "oz",
    calories: 110, calories_from_fat: 70, fat_g: 8, saturated_fat_g: 5,
    cholesterol_mg: 30, sodium_mg: 190, carbs_g: 1, fiber_g: 0, sugar_g: 0, protein_g: 6
  },
  {
    name: "Guacamole (large)", serving_size: 8, serving_unit: "oz",
    calories: 460, calories_from_fat: 380, fat_g: 44, saturated_fat_g: 7,
    cholesterol_mg: 0, sodium_mg: 740, carbs_g: 16, fiber_g: 12, sugar_g: 2, protein_g: 4
  },
  {
    name: "Queso Blanco (entree)", serving_size: 2, serving_unit: "oz",
    calories: 120, calories_from_fat: 80, fat_g: 9, saturated_fat_g: 6,
    cholesterol_mg: 30, sodium_mg: 250, carbs_g: 4, fiber_g: 0, sugar_g: 1, protein_g: 5
  },
  {
    name: "Queso Blanco (side)", serving_size: 4, serving_unit: "oz",
    calories: 240, calories_from_fat: 170, fat_g: 18, saturated_fat_g: 12,
    cholesterol_mg: 60, sodium_mg: 490, carbs_g: 7, fiber_g: 0, sugar_g: 2, protein_g: 10
  },
  {
    name: "Queso Blanco (large)", serving_size: 8, serving_unit: "oz",
    calories: 480, calories_from_fat: 330, fat_g: 37, saturated_fat_g: 23,
    cholesterol_mg: 120, sodium_mg: 980, carbs_g: 14, fiber_g: 0.5, # "<1"
    sugar_g: 5, protein_g: 20
  },
  {
    name: "Supergreens Salad Mix", serving_size: 3, serving_unit: "oz",
    calories: 15, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 15, carbs_g: 3, fiber_g: 2, sugar_g: 1, protein_g: 1
  },
  {
    name: "Romaine Lettuce (tacos)", serving_size: 1, serving_unit: "oz",
    calories: 5, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 0, carbs_g: 1, fiber_g: 1, sugar_g: 0, protein_g: 0
  },
  {
    name: "Chips (regular)", serving_size: 4, serving_unit: "oz",
    calories: 540, calories_from_fat: 230, fat_g: 25, saturated_fat_g: 3.5,
    cholesterol_mg: 0, sodium_mg: 390, carbs_g: 73, fiber_g: 7, sugar_g: 1, protein_g: 7
  },
  {
    name: "Chips (large)", serving_size: 6, serving_unit: "oz",
    calories: 810, calories_from_fat: 350, fat_g: 38, saturated_fat_g: 5,
    cholesterol_mg: 0, sodium_mg: 590, carbs_g: 110, fiber_g: 11, sugar_g: 2, protein_g: 11
  },
  {
    name: "Chipotle-Honey Vinaigrette", serving_size: 2, serving_unit: "fl oz",
    calories: 220, calories_from_fat: 140, fat_g: 16, saturated_fat_g: 2.5,
    cholesterol_mg: 0, sodium_mg: 850, carbs_g: 18, fiber_g: 1, sugar_g: 12, protein_g: 1
  },
  {
    name: "Barq's Root Beer (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 280, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 130, carbs_g: 85, fiber_g: 0, sugar_g: 85, protein_g: 0
  },
  {
    name: "Barq's Root Beer (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 430, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 180, carbs_g: 120, fiber_g: 0, sugar_g: 120, protein_g: 0
  },
  {
    name: "Coca-Cola Classic (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 260, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 85, carbs_g: 70, fiber_g: 0, sugar_g: 70, protein_g: 0
  },
  {
    name: "Coca-Cola Classic (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 380, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 120, carbs_g: 105, fiber_g: 0, sugar_g: 105, protein_g: 0
  },
  {
    name: "Coca Cola Life (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 170, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 70, carbs_g: 44, fiber_g: 0, sugar_g: 44, protein_g: 0
  },
  {
    name: "Coca Cola Life (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 250, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 105, carbs_g: 64, fiber_g: 0, sugar_g: 64, protein_g: 0
  },
  {
    name: "Coca-Cola Zero (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 0, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 75, carbs_g: 0, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Coca-Cola Zero (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 0, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 115, carbs_g: 0, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Diet Coke (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 0, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 75, carbs_g: 0, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Diet Coke (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 0, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 115, carbs_g: 0, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Diet Coke, Caffeine Free (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 0, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 90, carbs_g: 0, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Diet Coke, Caffeine Free (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 0, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 130, carbs_g: 0, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Pibb Xtra (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 260, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 75, carbs_g: 70, fiber_g: 0, sugar_g: 70, protein_g: 0
  },
  {
    name: "Pibb Xtra (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 380, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 115, carbs_g: 105, fiber_g: 0, sugar_g: 105, protein_g: 0
  },
  {
    name: "Sprite (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 260, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 120, carbs_g: 70, fiber_g: 0, sugar_g: 70, protein_g: 0
  },
  {
    name: "Sprite (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 380, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 180, carbs_g: 105, fiber_g: 0, sugar_g: 105, protein_g: 0
  },
  {
    name: "Fanta Orange (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 290, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 80, carbs_g: 80, fiber_g: 0, sugar_g: 80, protein_g: 0
  },
  {
    name: "Fanta Orange (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 430, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 140, carbs_g: 120, fiber_g: 0, sugar_g: 120, protein_g: 0
  },
  {
    name: "Minute Maid Lemonade (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 280, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 95, carbs_g: 75, fiber_g: 0, sugar_g: 75, protein_g: 0
  },
  {
    name: "Minute Maid Lemonade (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 400, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 140, carbs_g: 110, fiber_g: 0, sugar_g: 110, protein_g: 0
  },
  {
    name: "Powerade Mountain Berry Blast (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 280, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 95, carbs_g: 75, fiber_g: 0, sugar_g: 75, protein_g: 0
  },
  {
    name: "Powerade Mountain Berry Blast (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 400, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 140, carbs_g: 110, fiber_g: 0, sugar_g: 110, protein_g: 0
  },
  {
    name: "Mello Yello (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 290, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 100, carbs_g: 80, fiber_g: 0, sugar_g: 80, protein_g: 0
  },
  {
    name: "Mello Yello (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 420, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 140, carbs_g: 116, fiber_g: 0, sugar_g: 116, protein_g: 0
  },
  {
    name: "Lemonade - Blue Sky (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 300, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 95, carbs_g: 78, fiber_g: 0, sugar_g: 74, protein_g: 0
  },
  {
    name: "Lemonade - Blue Sky (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 440, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 135, carbs_g: 113, fiber_g: 0, sugar_g: 108, protein_g: 0
  },
  {
    name: "Mango Orange - Blue Sky (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 300, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 80, carbs_g: 75, fiber_g: 0, sugar_g: 74, protein_g: 0
  },
  {
    name: "Mango Orange - Blue Sky (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 430, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 120, carbs_g: 109, fiber_g: 0, sugar_g: 108, protein_g: 0
  },
  {
    name: "Maine Root Root Beer (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 170, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 45, carbs_g: 62, fiber_g: 0, sugar_g: 62, protein_g: 0
  },
  {
    name: "Maine Root Root Beer (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 240, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 65, carbs_g: 90, fiber_g: 0, sugar_g: 90, protein_g: 0
  },
  {
    name: "Chipotle Iced Tea (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 10, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 0, carbs_g: 3, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Chipotle Iced Tea (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 15, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 0, carbs_g: 4, fiber_g: 0, sugar_g: 0, protein_g: 0
  },
  {
    name: "Chipotle Sweet Iced Tea (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 150, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 0, carbs_g: 45, fiber_g: 0, sugar_g: 45, protein_g: 0
  },
  {
    name: "Chipotle Sweet Iced Tea (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 220, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 0, carbs_g: 65, fiber_g: 0, sugar_g: 65, protein_g: 0
  },
  {
    name: "Tractor Berry Agua Fresca (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 200, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 10, carbs_g: 50, fiber_g: 0, sugar_g: 49, protein_g: 0
  },
  {
    name: "Tractor Berry Agua Fresca (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 290, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 15, carbs_g: 72, fiber_g: 0, sugar_g: 72, protein_g: 0
  },
  {
    name: "Tractor Watermelon Limeade (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 230, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 5, carbs_g: 56, fiber_g: 0, sugar_g: 50, protein_g: 0
  },
  {
    name: "Tractor Watermelon Limeade (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 330, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 10, carbs_g: 82, fiber_g: 0, sugar_g: 72, protein_g: 0
  },
  {
    name: "Tractor Lemonade (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 170, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 10, carbs_g: 43, fiber_g: 0, sugar_g: 37, protein_g: 0
  },
  {
    name: "Tractor Lemonade (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 250, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 15, carbs_g: 62, fiber_g: 0, sugar_g: 53, protein_g: 0
  },
  {
    name: "Tractor Mandarin Agua Fresca (22 fl oz)", serving_size: 22, serving_unit: "fl oz",
    calories: 190, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 0, carbs_g: 47, fiber_g: 0, sugar_g: 47, protein_g: 0
  },
  {
    name: "Tractor Mandarin Agua Fresca (32 fl oz)", serving_size: 32, serving_unit: "fl oz",
    calories: 280, calories_from_fat: 0, fat_g: 0, saturated_fat_g: 0,
    cholesterol_mg: 0, sodium_mg: 5, carbs_g: 69, fiber_g: 0, sugar_g: 69, protein_g: 0
  }
]

items.each do |attrs|
  chipotle.food_items.find_or_create_by!(name: attrs[:name]) do |item|
    item.assign_attributes(attrs.except(:name))
  end
end
