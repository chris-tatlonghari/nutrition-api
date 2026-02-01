# frozen_string_literal: true

module Admin
  class ServicesController < ApplicationController
    before_action :set_service, only: [:show, :edit, :update, :destroy]

    def index
      @q = Service.ransack(params[:q])
      @services = @q.result.order(name: :asc)

      @stats = {
        total_services: Service.count,
        total_food_items: FoodItem.count,
        avg_items_per_service: Service.joins(:food_items).group("services.id").count.values.sum.to_f / [Service.count, 1].max
      }
    end

    def show
      @food_items = @service.food_items.order(name: :asc)
    end

    def new
      @service = Service.new
    end

    def create
      @service = Service.new(service_params)

      if @service.save
        redirect_to admin_service_path(@service), notice: "Service created successfully."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @service.update(service_params)
        redirect_to admin_service_path(@service), notice: "Service updated successfully."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      if @service.destroy
        redirect_to admin_services_path, notice: "Service deleted successfully."
      else
        redirect_to admin_service_path(@service), alert: "Cannot delete service with existing food items."
      end
    end

    private

    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params.require(:service).permit(:name, :category)
    end
  end
end
