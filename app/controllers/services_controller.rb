# frozen_string_literal: true

class ServicesController < ApplicationController
  def index
    @q = Service.ransack(params[:q])
    @services = @q.result
  end

  def show
    @service = Service.find(params[:id])
    @food_items = @service.food_items.order(:name)

    selected_ids = Array(params[:food_item_ids]).map(&:to_i)

    @nutrition = @service.nutrition(selected_ids)
  end
end
