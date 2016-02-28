require 'rails_helper'

RSpec.describe "order_items/edit", type: :view do
  before(:each) do
    @order_item = assign(:order_item, OrderItem.create!(
      :quantity => 1,
      :status => "MyString",
      :order => nil,
      :stock => nil,
      :stocktype => nil
    ))
  end

  it "renders the edit order_item form" do
    render

    assert_select "form[action=?][method=?]", order_item_path(@order_item), "post" do

      assert_select "input#order_item_quantity[name=?]", "order_item[quantity]"

      assert_select "input#order_item_status[name=?]", "order_item[status]"

      assert_select "input#order_item_order_id[name=?]", "order_item[order_id]"

      assert_select "input#order_item_stock_id[name=?]", "order_item[stock_id]"

      assert_select "input#order_item_stocktype_id[name=?]", "order_item[stocktype_id]"
    end
  end
end
