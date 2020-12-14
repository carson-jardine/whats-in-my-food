require 'rails_helper'

describe 'Food Facade' do
  it "returns search results" do
    ingredient = 'banana'
    result = FoodFacade.foods(ingredient)

    expect(result).to be_an(Array)
    expect(result.size).to eq(10)
    expect(result.first).to be_an_instance_of(Food)
  end

  it "returns total results" do
    ingredient = 'banana'
    result = FoodFacade.total_results(ingredient)

    expect(result).to be_an(Integer)
    expect(result).to eq(3723)
  end
end
