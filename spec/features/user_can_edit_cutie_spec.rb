require 'rails_helper'

# feature 'user edits cutie' %Q{
#   As a user
#   I want to edit my cutie
#   So I can correct mistakes or add information
# } do

  # Acceptance Critera
  # * user can edit their own cutie's entry
  # * user can not edit cutie that does not belong to them

  # scenario 'user successfully edits their cutie page' do
  #   cutie = FactoryGirl.create(:cuty)
  #   user = cutie.user
  #
  #   visit root_path
  #   click_link 'Sign In'
  #   fill_in 'Email', with: user.email
  #   fill_in 'Password', with: user.password
  #   click_button 'Sign In'
  #
  #   visit edit_cuty_path(cutie)
  #   expect(page).to have_content(cutie.name)
  #
  #   fill_in 'Name', with: "New Cutie Name"
  #   click_button "Edit #{cutie.name}"
  #
  #   expect(page).to have_content("New Cutie Name")
  #
  # end


# end
