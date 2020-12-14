require 'rails_helper'

describe 'As a User' do
  describe 'When I fill in the search form with "sweet potatoes"' do
    it "I am taken to the foods index page and see a total number of search results" do
      visit '/'

      expect(page).to have_field(:q)
      fill_in :q, with: 'sweet potatoes'
      click_button('Search')
      expect(current_path).to eq('/foods')
      expect(page).to have_content('39244 Results')
    end

    it "I see a list of ten foods that contain sweet potatoes and their details" do
      visit '/'
      fill_in :q, with: 'sweet potatoes'
      click_button('Search')

      expect(page).to have_css(".food", count: 10)
      within(first(".food")) do
        expect(page).to have_css(".code")
        expect(page).to have_content("070560951975")

        expect(page).to have_css(".description")
        expect(page).to have_content("Sweet potatoes")

        expect(page).to have_css(".brand_owner")
        expect(page).to have_content("The Pictsweet Company")

        expect(page).to have_css(".ingredients")
        expect(page).to have_content("Sweet potatoes.")
      end
    end
  end
end
