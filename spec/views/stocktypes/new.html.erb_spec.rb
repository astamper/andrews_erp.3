require 'rails_helper'

RSpec.describe "stocktypes/new", type: :view do
  before(:each) do
    assign(:stocktype, Stocktype.new(
      :name => "MyString"
    ))
  end

  it "renders new stocktype form" do
    render

    assert_select "form[action=?][method=?]", stocktypes_path, "post" do

      assert_select "input#stocktype_name[name=?]", "stocktype[name]"
    end
  end
end
