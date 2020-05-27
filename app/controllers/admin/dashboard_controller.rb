class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']
  def show
    @products = Product.count()
    @categories = Category.count()
    puts @products.inspect
    puts @categories.inspect
  end
end
