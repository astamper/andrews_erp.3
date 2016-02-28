require "rails_helper"

RSpec.describe StocktypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/stocktypes").to route_to("stocktypes#index")
    end

    it "routes to #new" do
      expect(:get => "/stocktypes/new").to route_to("stocktypes#new")
    end

    it "routes to #show" do
      expect(:get => "/stocktypes/1").to route_to("stocktypes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/stocktypes/1/edit").to route_to("stocktypes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/stocktypes").to route_to("stocktypes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/stocktypes/1").to route_to("stocktypes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/stocktypes/1").to route_to("stocktypes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/stocktypes/1").to route_to("stocktypes#destroy", :id => "1")
    end

  end
end
