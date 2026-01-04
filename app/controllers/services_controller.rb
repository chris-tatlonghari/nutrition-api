# frozen_string_literal: true

class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])

    selected_ids = Array(params[:food_item_ids]).map(&:to_i)

    @nutrition = @service.nutrition(selected_ids)
  end
end
