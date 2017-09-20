require 'rails_helper'

feature "cutie photo" do
  scenario "user uploads a cutie photo" do
    user = FactoryGirl.create(:user)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'
    click_link "Add A Cutie To Your Crew"

    fill_in "Name", with: "Cutie Pie Jones"

    attach_file "cuty_cutie_pic", "#{Rails.root}/spec/support/images/photo.jpg"
    click_button "Add Cutie"

    expect(page).to have_content("Cutie Successfully Added!")
    expect(page).to have_content("Cutie Pie Jones")
  end
end
