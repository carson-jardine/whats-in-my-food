class FoodsController < ApplicationController
  def index
    @foods = FoodFacade.foods(params[:q])
    @total_results = FoodFacade.total_results(params[:q])
    # ingredient = params[:q]
    #
    # conn = Faraday.new(url: "https://api.nal.usda.gov") do |f|
    #   f.params["api_key"] = ENV["FDC_API_KEY"]
    # end
    #
    # response = conn.get("fdc/v1/foods/search?&query=#{ingredient}&pageSize=10")
    # @json = JSON.parse(response.body, symbolize_names: true)
    # @foods = @json[:foods].map do |food_data|
    #   Food.new(food_data)
    # end
  end
end
