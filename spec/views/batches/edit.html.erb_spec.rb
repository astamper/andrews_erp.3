require 'rails_helper'

RSpec.describe "batches/edit", type: :view do
  before(:each) do
    @batch = assign(:batch, Batch.create!(
      :quantity => 1,
      :status => "MyString",
      :stocktype => nil
    ))
  end

  it "renders the edit batch form" do
    render

    assert_select "form[action=?][method=?]", batch_path(@batch), "post" do

      assert_select "input#batch_quantity[name=?]", "batch[quantity]"

      assert_select "input#batch_status[name=?]", "batch[status]"

      assert_select "input#batch_stocktype_id[name=?]", "batch[stocktype_id]"
    end
  end
end
