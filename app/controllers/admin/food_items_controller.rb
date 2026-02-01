# frozen_string_literal: true

module Admin
  class FoodItemsController < ApplicationController
    before_action :set_service
    before_action :set_food_item, only: [:edit, :update, :destroy]

    def new
      @food_item = @service.food_items.build
    end

    def create
      @food_item = @service.food_items.build(food_item_params)

      if @food_item.save
        redirect_to admin_service_path(@service), notice: "Food item created successfully."
      else
        render :new, status: :unprocessable_entity
      end
    end

    def edit
    end

    def update
      if @food_item.update(food_item_params)
        redirect_to admin_service_path(@service), notice: "Food item updated successfully."
      else
        render :edit, status: :unprocessable_entity
      end
    end

    def destroy
      @food_item.destroy
      redirect_to admin_service_path(@service), notice: "Food item deleted successfully."
    end

    private

    def set_service
      @service = Service.find(params[:service_id])
    end

    def set_food_item
      @food_item = @service.food_items.find(params[:id])
    end

    def food_item_params
      params.require(:food_item).permit(
        :name,
        :serving_size,
        :serving_unit,
        :calories,
        :calories_from_fat,
        :protein_g,
        :carbs_g,
        :fat_g,
        :saturated_fat_g,
        :fiber_g,
        :sugar_g,
        :sodium_mg,
        :cholesterol_mg
      )
    end
  end
end
