require 'rails_helper'

RSpec.describe Food do
  it "exists" do
    attrs = {
      gtinUpc: "0123456789",
      description: "Cheeseburger",
      brandOwner: "Kellog",
      ingredients: "butter, milk, cheese, salt, pepper, ground beef"
    }

    food = Food.new(attrs)
    expect(food).to be_a Food
    expect(food.code).to eq("0123456789")
    expect(food.description).to eq("Cheeseburger")
    expect(food.brand_owner).to eq("Kellog")
    expect(food.ingredients).to eq("butter, milk, cheese, salt, pepper, ground beef")
  end
end
