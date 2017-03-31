require 'rails_helper'

RSpec.feature 'Users can sign in' do
  let!(:user) { FactoryGirl.create(:user) }

  scenario 'with valid credentials' do
    visit '/'
    click_link 'Sign in'
    fill_in 'Username', with: 'test'
    fill_in 'Password', with: 'test'
    click_button 'Sign in'

    expect(page).to have_content 'Signed in successfully'
  end
end