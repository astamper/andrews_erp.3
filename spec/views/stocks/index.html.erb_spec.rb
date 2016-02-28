require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :intitial_quantity => 1.5,
        :current_quantity => 1.5,
        :status => "Status",
        :price_per_unit => 1.5,
        :supplier => "Supplier",
        :identifier => "Identifier",
        :stocktype => nil
      ),
      Stock.create!(
        :intitial_quantity => 1.5,
        :current_quantity => 1.5,
        :status => "Status",
        :price_per_unit => 1.5,
        :supplier => "Supplier",
        :identifier => "Identifier",
        :stocktype => nil
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Supplier".to_s, :count => 2
    assert_select "tr>td", :text => "Identifier".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
