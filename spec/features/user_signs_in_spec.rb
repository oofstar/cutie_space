require 'rails_helper'

feature 'user signs in', %Q{
  As a user
  I want to sign in
  So that I can use cutiespace
} do

  #Acceptance Criteria:
  # * if I specify a valid, previously registered email and password, I am authenticated and I gain access to the system
  # * if I specify an invalid email and password, I remain unathenticated
  # * if I am already signed in, I can't sign in again

  scenario 'an existing user specifies a valid email and password' do
    user = FactoryGirl.create(:user)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    expect(page).to have_content('Welcome back, buddy!')
    expect(page).to have_content('Sign Out')
  end

  scenario 'a non-existent email and password is supplied' do
    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: 'nobody@example.com'
    fill_in 'Password', with: 'notapassword'
    click_button 'Sign In'

    expect(page).to have_content('Invalid Email or password')
    expect(page).to_not have_content('Welcome back, buddy!')
    expect(page).to_not have_content('Sign Out')
  end

  scenario 'an existing email with the wrong password is denied access' do
    user = FactoryGirl.create(:user)

    visit root_path
    click_link 'Sign In'
    fill_in 'Email', with: user.email
    fill_in 'Password', with: 'incorrectPassword'
    click_button 'Sign In'


    expect(page).to have_content('Invalid Email or password')
    expect(page).to_not have_content('Welcome back, buddy!')
    expect(page).to_not have_content('Sign Out')
  end

  scenario 'an already authenticated user cannot re-sign in' do
    user = FactoryGirl.create(:user)

    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Sign In'

    expect(page).to have_content('Sign Out')
    expect(page).to_not have_content('Sign In')

    visit new_user_session_path

    expect(page).to have_content('You are already signed in.')
  end

end
