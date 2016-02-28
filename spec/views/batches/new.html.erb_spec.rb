require 'rails_helper'

RSpec.describe "batches/new", type: :view do
  before(:each) do
    assign(:batch, Batch.new(
      :quantity => 1,
      :status => "MyString",
      :stocktype => nil
    ))
  end

  it "renders new batch form" do
    render

    assert_select "form[action=?][method=?]", batches_path, "post" do

      assert_select "input#batch_quantity[name=?]", "batch[quantity]"

      assert_select "input#batch_status[name=?]", "batch[status]"

      assert_select "input#batch_stocktype_id[name=?]", "batch[stocktype_id]"
    end
  end
end
