require 'rails_helper'

RSpec.describe "batches/show", type: :view do
  before(:each) do
    @batch = assign(:batch, Batch.create!(
      :quantity => 1,
      :status => "Status",
      :stocktype => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
  end
end
