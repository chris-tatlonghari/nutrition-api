# frozen_string_literal: true

module ServicesHelper
  def active_sort_classes(field_name)
    current_sort = params.dig(:q, :s)

    # Default to 'name asc' on initial load
    if current_sort.nil?
      return 'active' if field_name == 'name'
      return ''
    end

    # Check if this field is the active sort
    if current_sort&.start_with?(field_name)
      classes = ['active']
      classes << 'desc' if current_sort.end_with?('desc')
      return classes.join(' ')
    end

    ''
  end

  def sort_value(field_name)
    current_sort = params.dig(:q, :s)

    # If this field is currently active, return current value
    return current_sort if current_sort&.start_with?(field_name)

    # Default values
    field_name == 'name' ? "#{field_name} asc" : "#{field_name} desc"
  end
end
