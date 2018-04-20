require 'rails_helper'

describe "the delete a product process" do
  it "deletes a product" do
    product = Product.create(:name => 'eggs', :cost => 2, :country_of_origin => 'USA')
    visit products_path
    click_on 'Delete'
    # click on alert 'OK'
    expect(page).to not_have_content 'eggs'
  end
end
