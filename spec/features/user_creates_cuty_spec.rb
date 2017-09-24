require 'rails_helper'

# feature 'user creates cutie' %Q{
#   As an authenticated user
#   I want to create a cutie
#   So that my cutie can share their story with the world
# } do

  # * visiting the new cutie page displays a form that can be filled out
  # * unauthenticated user cannot access new cutie form
  # * submitting the form with a name and photo creates an entry for a new cutie
  # * submitting a form without a photo or a name does not create an entry

  # user = FactoryGirl.create(:user)
  # photo_address = "#{Rails.root}/spec/support/images/photo.jpg"
  #
  # scenario 'user creates new cutie by clicking new cutie link on their page' do
  #   visit root_path
  #   click_link 'Sign In'
  #   fill_in 'Email', with: user.email
  #   fill_in 'Password', with: user.password
  #   click_button 'Sign In'
  #
  #   visit new_cuty_path
  #
  #   fill_in 'Bio', with: 'A cutie with a hat'
  #   fill_in 'Cutie Type', with: 'Softie'
  #   fill_in 'Species', with: 'Frog'
  #   select "1985", :from => "cuty[birthdate(1i)]"
  #   select "February", :from => "cuty[birthdate(2i)]"
  #   select "10", :from => "cuty[birthdate(3i)]"
  #
  #   page.attach_file("cuty[cutie_pic]", "#{Rails.root}/spec/support/images/photo.jpg")
  #
  #   click_button 'Add Cutie'
  #
  #
  #   expect(page).to have_content("Pants McGee")
  # end

# end
