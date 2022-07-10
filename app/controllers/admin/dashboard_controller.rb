class Admin::DashboardController < ApplicationController
  def show
    @how_many_items = Product.count
    @how_many_categories = Category.count
  end
end
