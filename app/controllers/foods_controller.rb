class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.foods(params[:q])
    @total_results = FoodFacade.total_results(params[:q])
  end
end
