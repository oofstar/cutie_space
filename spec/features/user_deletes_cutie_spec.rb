require 'rails_helper'

feature 'user deletes cuties', %Q{
  As an authenticated user
  I want to delete cuties
  for some reason
} do

# Acceptance Criteria

# * user visits user page and has links for deleting their cuties
# * user can delete a cutie

  scenario 'user sees delete buttons on users home page and can delete a cutie' do
    user = FactoryGirl.create(:user)
    cutie_1 = FactoryGirl.create(:cuty, user: user)
    cutie_2 = FactoryGirl.create(:cuty, user: user)
    cutie_3 = FactoryGirl.create(:cuty, user: user)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    visit user_path(user)

    click_button "Delete #{cutie_1.name}"

    expect(page).to_not have_content(cutie_1.name)

  end

end
