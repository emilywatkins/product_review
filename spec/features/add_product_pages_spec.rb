require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'add a new product'
    fill_in 'Name', :with => 'Eggs'
    fill_in 'Cost', :with => 2
    fill_in 'Country of origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Eggs'
  end

  it "gives error when no value is entered" do
    visit new_product_path
    click_on 'Create Product'
    expect(page).to have_content 'errors'
  end

end
