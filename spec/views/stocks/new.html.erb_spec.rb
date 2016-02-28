require 'rails_helper'

RSpec.describe "stocks/new", type: :view do
  before(:each) do
    assign(:stock, Stock.new(
      :intitial_quantity => 1.5,
      :current_quantity => 1.5,
      :status => "MyString",
      :price_per_unit => 1.5,
      :supplier => "MyString",
      :identifier => "MyString",
      :stocktype => nil
    ))
  end

  it "renders new stock form" do
    render

    assert_select "form[action=?][method=?]", stocks_path, "post" do

      assert_select "input#stock_intitial_quantity[name=?]", "stock[intitial_quantity]"

      assert_select "input#stock_current_quantity[name=?]", "stock[current_quantity]"

      assert_select "input#stock_status[name=?]", "stock[status]"

      assert_select "input#stock_price_per_unit[name=?]", "stock[price_per_unit]"

      assert_select "input#stock_supplier[name=?]", "stock[supplier]"

      assert_select "input#stock_identifier[name=?]", "stock[identifier]"

      assert_select "input#stock_stocktype_id[name=?]", "stock[stocktype_id]"
    end
  end
end
