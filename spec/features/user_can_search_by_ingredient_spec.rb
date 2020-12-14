require 'rails_helper'

describe 'As a User' do
  describe 'When I fill in the search form with "sweet potatoes"' do
    it "I am taken to the foods index page and see a total number of search results" do
      visit '/'

      expect(page).to have_field(:q)
      fill_in :q, with: 'sweet potatoes'
      click_button('Search')
      expect(current_path).to eq('/foods')
      expect(page).to have_content('10 Results')
    end

    it "I see a list of ten foods that contain sweet potatoes and their details" do
      visit '/'
      fill_in :q, with: 'sweet potatoes'
      click_button('Search')

      expect(page).to have_css(".food", count: 10)
      within(first(".food")) do
        expect(page).to have_css(".code")
        expect(page).to have_css(".description")
        expect(page).to have_css(".brand_owner")
        expect(page).to have_css(".ingredients")
      end
    end
  end
end
# As a user,
# When I visit "/"
# And I fill in the search form with "sweet potatoes"
# (Note: Use the existing search form)
# And I click "Search"
# Then I should be on page "/foods"

# Then I should see a total of the number of items returned by the search.
# Then I should see a list of ten foods that contain the ingredient "sweet potatoes"
# And for each of the foods I should see:
# - The food's GTIN/UPC code
# - The food's description
# - The food's Brand Owner
# - The food's ingredients
