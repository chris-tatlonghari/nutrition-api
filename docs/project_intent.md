# Project Intent

Build a nutrition tracking application for eating out, while remaining useful as
a general nutrition tool for other users.

Key ideas:

- Admin/import side:
  - Use an external LLM (e.g., ChatGPT) to analyze nutrition fact sheets and
    consolidate them into a JSON file.
  - Import that JSON into the app to create/update nutrition data.
  - Restrict data import/update features to users with appropriate privileges.
- User-facing side:
  - Provide a nutrition calculator that can compute totals for a meal.
  - Allow users to save meal configurations and return to them later.
  - Prioritize an intuitive, elegant UI for importing and consuming nutrition
    data.
