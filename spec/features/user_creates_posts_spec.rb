require 'rails_helper'


feature 'user creates posts for their cuties', %Q{
  As an authenticated user
  I want to add status updates for my cuties
} do

# * visiting the show page for one of the user's cuties displays an update box
# * visiting the show page for someone else's cutie does not display update box
# * submitting the form with text creates a status update for the intended cutie
# * submitting the form with no text does not create status and displays error

  scenario 'user visits page for their own cutie and sees activity input box' do
    cutie = FactoryGirl.create(:cuty)
    user = cutie.user

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    visit cuty_path(cutie)

    expect(page).to have_content("What have you been up to?")
  end

  scenario 'user visits page for someone elses cutie and does not see activity input box' do
    cutie = FactoryGirl.create(:cuty)
    user = FactoryGirl.create(:user)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    visit cuty_path(cutie)
    expect(page).to_not have_content("What have you been up to?")
  end

  scenario 'user enters text into activity box and creates post' do
    cutie = FactoryGirl.create(:cuty)
    user = cutie.user

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    visit cuty_path(cutie)

    fill_in 'post[body]', with: "I been everywhere, man!"
    click_button 'Update Status'

    expect(page).to have_content("I been everywhere, man!")
    expect(page).to_not have_content("Body can't be blank")
  end

  scenario 'user tries to post empty activity' do
    cutie = FactoryGirl.create(:cuty)
    user = cutie.user

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    visit cuty_path(cutie)

    fill_in 'post[body]', with: "    "
    click_button 'Update Status'

    expect(page).to have_content("Body can't be blank")
  end

end
