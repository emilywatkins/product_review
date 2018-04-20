require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    product = Product.create(:name => 'eggs', :cost => 2, :country_of_origin => 'USA')
    visit product_path(product)
    click_link 'add a review'
    fill_in 'Author', :with => 'Jan'
    fill_in 'Content body', :with => 'It\'s okay'
    fill_in 'Rating', :with => '1'
    click_on 'Create Review'
    expect(page).to have_content 'It\'s okay'
  end

end
