require 'rails_helper'

describe FDCService do
  describe 'instance methods' do
    it "#food_details" do
      search = FDCService.food_details("Chocolate")
      expect(search).to be_a(Hash)
      expect(search[:foods]).to be_an(Array)

      food_data = search[:foods].first
      expect(food_data).to have_key(:gtinUpc)
      expect(food_data[:gtinUpc]).to be_a(String)

      expect(food_data).to have_key(:description)
      expect(food_data[:description]).to be_a(String)

      expect(food_data).to have_key(:brandOwner)
      expect(food_data[:brandOwner]).to be_a(String)

      expect(food_data).to have_key(:ingredients)
      expect(food_data[:ingredients]).to be_a(String)
    end
  end
end
