require 'rails_helper'

RSpec.feature "Visitor navigates a product page", type: :feature, js: true do
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end
  end

  scenario "They see a product page" do
    # ACT
    visit root_path
    click_link 'Details »'

    # DEBUG / VERIFY
    save_screenshot
    expect(page).to have_css '.product-detail', count: 1
  end

end