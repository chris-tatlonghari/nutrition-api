# frozen_string_literal: true

module AdminHelper
  def active_link_class(path)
    current_page?(path) ? "active" : ""
  end
end
