require 'rails_helper'

RSpec.describe "stocktypes/index", type: :view do
  before(:each) do
    assign(:stocktypes, [
      Stocktype.create!(
        :name => "Name"
      ),
      Stocktype.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of stocktypes" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
