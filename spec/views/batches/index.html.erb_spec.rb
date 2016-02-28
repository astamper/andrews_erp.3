require 'rails_helper'

RSpec.describe "batches/index", type: :view do
  before(:each) do
    assign(:batches, [
      Batch.create!(
        :quantity => 1,
        :status => "Status",
        :stocktype => nil
      ),
      Batch.create!(
        :quantity => 1,
        :status => "Status",
        :stocktype => nil
      )
    ])
  end

  it "renders a list of batches" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
