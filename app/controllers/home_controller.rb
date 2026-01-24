# frozen_string_literal: true

class HomeController < ApplicationController
  def show
    @services = Service.all
  end
end
