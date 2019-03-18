require 'spec_helper'

feature 'Search Suggestions' do

  before(:all) do
    visit('https://www.google.com/')
  end

  after(:all) do
    Capybara.current_session.driver.quit 
  end

  let(:consonant_string)  { 'fghjklmnbvcxzasdfbpq' }

  scenario 'Entering a 20 consonant string yields no suggestions' do
    find('input[title="Search"]').set(consonant_string)
    suggestions = all("div ul[role='listbox']")

    expect(page).not_to have_selector("div ul[role='listbox'] li[role='presentation']")
  end

  context 'One word search term' do
    let(:search_string_single) { 'pistachio' }

    before(:example, :type => :list) do
      find('input[title="Search"]').set(search_string_single)
    end

    scenario 'Suggestions start with the search string', type: :list do
      suggestions = all("div ul[role='listbox'] li[role='presentation'] span")

      suggestions.each do |suggestion|
        expect(suggestion).to have_content(search_string_single)
      end
    end 

    scenario 'There are 10 suggestions listed', type: :list do
      suggestions = all("div ul[role='listbox'] li[role='presentation'] span") 
      expect(suggestions.size).to be == 10
    end
  end
end 
