require 'rails_helper'

RSpec.describe "stocktypes/show", type: :view do
  before(:each) do
    @stocktype = assign(:stocktype, Stocktype.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
