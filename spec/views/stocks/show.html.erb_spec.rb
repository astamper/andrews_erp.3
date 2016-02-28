require 'rails_helper'

RSpec.describe "stocks/show", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :intitial_quantity => 1.5,
      :current_quantity => 1.5,
      :status => "Status",
      :price_per_unit => 1.5,
      :supplier => "Supplier",
      :identifier => "Identifier",
      :stocktype => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Supplier/)
    expect(rendered).to match(/Identifier/)
    expect(rendered).to match(//)
  end
end
