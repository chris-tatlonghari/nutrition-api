# Project Scratch Notes

## Current State

- Ruby on Rails application with a `Service` model and a `FoodItem` model.
- A `Service` has many `FoodItem` records, and nutrition totals are computed by
  summing the selected food items per service.
- The `ServicesController` supports:
  - `index`: list services.
  - `show`: show a service, list food items, and compute totals based on selected
    items via query params.
- The UI is server-rendered with Rails views:
  - A service index page with links to each service.
  - A service show page with checkboxes for food items and a nutrition facts
    panel that auto-updates via a Stimulus controller (`autosubmit`) and a turbo
    frame.
- Nutrition label output lives in a partial that mirrors a nutrition facts
  layout.
- The database currently includes:
  - `services`: name + timestamps.
  - `food_items`: name, serving info, and macro/micro nutrients such as calories,
    fat, carbs, protein, sodium, etc.
