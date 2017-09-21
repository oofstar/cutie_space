require 'rails_helper'

cuty_1 = FactoryGirl.create(:cuty)
post_1 = FactoryGirl.create(:post, cuty: cuty_1)
post_2 = FactoryGirl.create(:post, cuty: cuty_1)
post_3 = FactoryGirl.create(:post, cuty: cuty_1)

feature 'user signs up', %Q{
  As a visitor
  I want to be able to click on a cutie’s photo
  So I can see details about them
} do

  # Acceptance Criteria
  # * visiting the page for an individual cutie displays details about them
  # * visiting the page for an individual cutie displays their status updates
  # * status updates display sorted by most recent first


  scenario 'user visits individual cutie page and sees details about cutie' do
    visit cuty_path(cuty_1)

    expect(page).to have_content("Meet #{cuty_1.name}")
    expect(page).to have_content("Bio: #{cuty_1.bio}")
    expect(page).to have_content("Type: #{cuty_1.cutie_type}")
    expect(page).to have_content("Species: #{cuty_1.species}")

  end



  scenario 'user sees status updates with more recent first' do
    visit cuty_path(cuty_1)

    expect(page).to have_content(post_3.body)
    expect(page).to have_content(post_2.body)
    expect(page).to have_content(post_1.body)

  end

end
