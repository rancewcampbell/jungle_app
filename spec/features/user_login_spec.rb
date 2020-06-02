require 'rails_helper'

RSpec.feature "Login to app", type: :feature, js: true do
  before :each do
    @category = User.create! first_name: 'Rance', last_name: 'Campbell', email: 'rance@gmail.com', password: 'password', password_confirmation: 'password'
  end

  scenario "Are signed in" do
    # ACT
    visit '/login'
    
    fill_in 'email', with: 'rance@gmail.com'
    fill_in 'password', with: 'password'
    click_on 'Submit'
    puts page.html
    # DEBUG / VERIFY
    save_screenshot
    expect(page.find('nav')).to have_text 'Logout'
  end

end