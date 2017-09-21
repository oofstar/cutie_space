require 'rails_helper'

cuty_1 = FactoryGirl.create(:cuty)
cuty_2 = FactoryGirl.create(:cuty)

feature 'user signs up', %Q{
  As a visitor
  I want to see a list of all cuties
  So I can choose which one’s details I ant to see
} do

  # Acceptance Criteria
  # * visiting the cutie index path displays a list of all cuties
  # * each cutie has a photo that is a link to their details page

  scenario 'user visit cutie index and sees list of all cuties' do
    visit cuties_path

    expect(page).to have_content("Meet The Cuties")
    expect(page).to have_content(cuty_1.name)
    expect(page).to have_content(cuty_2.name)
  end



  scenario 'user sees list of cuties with photos and links to individual cutie pages' do
    visit cuties_path

    click_link(cuty_1.name)

    expect(page).to have_content("Meet #{cuty_1.name}")
  end

end
