require 'rails_helper'

RSpec.describe "Stocktypes", type: :request do
  describe "GET /stocktypes" do
    it "works! (now write some real specs)" do
      get stocktypes_path
      expect(response).to have_http_status(200)
    end
  end
end
