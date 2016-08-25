require 'rails_helper'

feature 'reviewing' do
  before do
    Restaurant.create(name: 'KFC')
    sign_up
  end

  scenario 'allows users to leave a review using a form' do
    visit '/restaurants'
    click_link 'Review KFC'
    fill_in 'Thoughts', with: "Just the best"
    select '5', from: 'Rating'
    click_button 'Leave Review'
    expect(current_path).to eq '/restaurants'
    expect(page).to have_content "Just the best"
  end
end
