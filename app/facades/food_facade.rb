class FoodFacade
  def self.foods(ingredient)
    json = FDCService.food_details(ingredient)

    json[:foods].map do |food_data|
      Food.new(food_data)
    end
  end

  def self.total_results(ingredient)
    json = FDCService.food_details(ingredient)
    json[:totalHits]
  end
end
