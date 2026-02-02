# frozen_string_literal: true

class ServicesController < ApplicationController
  def index
    @q = Service.ransack(params[:q])
    @services = @q.result
  end

  def show
    @service = Service.find(params[:id])
    @q = @service.food_items.ransack(params[:q])
    @q.sorts = 'name asc' if @q.sorts.empty?

    @food_items = @q.result

    @selected_ids = Array(params[:food_item_ids]).map(&:to_i)

    @nutrition = @service.nutrition(@selected_ids)

    respond_to do |format|
      format.html
      format.turbo_stream
    end
  end
end
