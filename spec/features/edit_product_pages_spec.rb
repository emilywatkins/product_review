require 'rails_helper'

describe "the edit a product process" do
  it "edits a product" do
    product = Product.create(:name => 'eggs', :cost => 2, :country_of_origin => 'USA')
    visit products_path
    click_on 'Edit'
    fill_in 'Cost', :with => '3'
    click_on 'Update Product'
    expect(page).to have_content '3'
  end
end
