require 'rails_helper'

RSpec.describe Apiv0::Weightickets::ShowController, :type => :controller do

  describe "GET show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

end
