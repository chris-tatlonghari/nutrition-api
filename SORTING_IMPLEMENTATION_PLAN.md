# Service Show Page - Sorting Implementation Plan

## Current State

The service show page (`app/views/services/show.html.erb`) displays:
- Sort buttons: Name, Calories, Protein, Sodium, Carbs
- Food items list with nutrition information
- Nutrition facts panel that updates based on selected items

**Current Issues:**
- Sort buttons have hover CSS effects but no click functionality
- Only "Name" appears highlighted (hardcoded in the view)
- Food items are always ordered by name (`.order(:name)` in controller)
- Ransack is installed but not used in the show action

## Goal

Implement functional sorting that:
1. Highlights the active sort button (green background like "Name" in the screenshot)
2. Sorts food items using Ransack based on the selected field
3. Uses Ruby/Turbo instead of creating a new Stimulus controller
4. Maintains selected food items when sorting changes

## Design Constraints

**Single-Field Sorting Only**

To keep the UX and application logic simple:
- Users can only sort by ONE field at a time (no multi-column sorting)
- Clicking a sort button replaces any existing sort with the new one
- Only one button is highlighted as active at any given time
- This prevents complexity in both the UI state management and user mental model

## Technical Approach

### Use Turbo Frames for Partial Page Updates

The existing form already uses:
- GET method (good for sorting as query params)
- Turbo frame data attributes
- Preserves selected food item checkboxes

We'll leverage this by:
1. Wrapping the food items list in a Turbo Frame
2. Making sort buttons submit form data with sort parameters
3. Using URL query parameters to persist sort state
4. Server-side rendering for active button state
5. **Single sort parameter** - Each button submission replaces the previous sort

## Implementation Steps

### Step 1: Configure Ransack on FoodItem Model

**File:** `app/models/food_item.rb`

Add ransackable attributes and associations:

```ruby

def self.ransackable_attributes(*) = %w[name calories protein_g sodium_mg carbs_g]

def self.ransackable_associations(*) = []
```

### Step 2: Update Services Controller

**File:** `app/controllers/services_controller.rb` (show action)

Replace the current sorting logic with Ransack:

```ruby
def show
  @service = Service.find(params[:id])

  # Use Ransack for sorting
  @q = @service.food_items.ransack(params[:q])

  # Set default sort if none provided
  @q.sorts = 'name asc' if @q.sorts.empty?

  @food_items = @q.result

  # Calculate nutrition for selected items
  selected_ids = Array(params[:food_item_ids]).map(&:to_i)
  @nutrition = @service.nutrition(selected_ids)
end
```

### Step 3: Update View - Wrap Food Items in Turbo Frame

**File:** `app/views/services/show.html.erb`

Add a Turbo Frame around the food items list (lines 20-42):

```erb
<%= turbo_frame_tag "food_items_list" do %>
  <div class="food-items-grid">
    <% @food_items.each do |food_item| %>
      <!-- existing food item card markup -->
    <% end %>
  </div>
<% end %>
```

### Step 4: Make Sort Buttons Functional

**File:** `app/views/services/show.html.erb` (lines 11-18)

Replace static buttons with form buttons that submit sort parameters:

```erb
<div class="sort-controls">
  <label>Sort by:</label>
  <%= button_tag "Name",
      type: "submit",
      name: "q[s]",
      value: "name asc",
      class: "sort-btn #{active_sort_class('name')}" %>

  <%= button_tag "Calories",
      type: "submit",
      name: "q[s]",
      value: "calories desc",
      class: "sort-btn #{active_sort_class('calories')}" %>

  <%= button_tag "Protein",
      type: "submit",
      name: "q[s]",
      value: "protein_g desc",
      class: "sort-btn #{active_sort_class('protein_g')}" %>

  <%= button_tag "Sodium",
      type: "submit",
      name: "q[s]",
      value: "sodium_mg desc",
      class: "sort-btn #{active_sort_class('sodium_mg')}" %>

  <%= button_tag "Carbs",
      type: "submit",
      name: "q[s]",
      value: "carbs_g desc",
      class: "sort-btn #{active_sort_class('carbs_g')}" %>
</div>
```

**Note:**
- The `q[s]` parameter is Ransack's syntax for sorting
- Each button uses the same parameter name (`q[s]`), so clicking a new sort button automatically replaces the previous sort
- This enforces single-field sorting without additional logic

### Step 5: Add Helper Method for Active Sort State

**File:** `app/helpers/services_helper.rb`

Create a helper to determine which sort button should be active:

```ruby
module ServicesHelper
  def active_sort_class(field_name)
    return 'active' unless params[:q] # Default to 'name' being active

    current_sort = params.dig(:q, :s)
    return 'active' if current_sort&.start_with?(field_name)

    # Handle default case (no sort param = name sort)
    'active' if field_name == 'name' && current_sort.blank?
  end
end
```

### Step 6: Update CSS (if needed)

**File:** Check existing CSS for `.sort-btn.active`

The screenshot shows the "Name" button with a green background. Verify that the CSS already has:

```css
.sort-btn.active {
  background-color: #6b8e23; /* or whatever green is used */
  color: white;
  /* other active styles */
}
```

## How It Works

1. **User clicks a sort button** → Button submits the form with `q[s]=field_name asc/desc`
2. **Form submission** → GET request to `services#show` with sort params
3. **Controller** → Ransack processes `params[:q]` and sorts food items
4. **Turbo Frame** → Only the food items list refreshes (smooth, no full page reload)
5. **Active state** → Helper checks current `params[:q][:s]` and adds `active` class to matching button
6. **Selected items preserved** → Form maintains `food_item_ids[]` checkboxes across sorts

## Benefits of This Approach

✅ **No JavaScript needed** - Pure Ruby/Rails with Turbo
✅ **URL-based state** - Sort order visible in URL, shareable, browser back/forward works
✅ **Maintains form state** - Selected food items persist through sort changes
✅ **Progressive enhancement** - Works without JavaScript if Turbo fails
✅ **Ransack integration** - Consistent with existing search patterns in the app
✅ **Smooth UX** - Turbo Frame provides partial page updates without flash
✅ **Simple logic** - Single-field sorting keeps both code and UX straightforward

## Testing Checklist

After implementation, verify:

- [ ] Clicking each sort button sorts the food items correctly
- [ ] Active sort button is highlighted with green background
- [ ] Selected food item checkboxes remain checked after sorting
- [ ] Nutrition facts panel updates correctly with sorted items
- [ ] URL contains sort parameters (e.g., `?q[s]=calories+desc`)
- [ ] Browser back/forward buttons work correctly
- [ ] Default sort (Name ascending) works when no sort param present
- [ ] Turbo frame updates without full page reload

## Potential Enhancements (Future)

- Add visual indicator for sort direction (↑/↓ arrows) next to button text
- Remember user's sort preference in session/cookie
- Add transition animations for sorted list
- Add keyboard shortcuts for sorting (e.g., 1-5 keys for each sort option)
