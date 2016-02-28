require 'rails_helper'

RSpec.describe "stocktypes/edit", type: :view do
  before(:each) do
    @stocktype = assign(:stocktype, Stocktype.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit stocktype form" do
    render

    assert_select "form[action=?][method=?]", stocktype_path(@stocktype), "post" do

      assert_select "input#stocktype_name[name=?]", "stocktype[name]"
    end
  end
end
