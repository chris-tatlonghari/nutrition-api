# frozen_string_literal: true

class HomeController < ApplicationController
  def show
    @q = Service.ransack
  end
end
