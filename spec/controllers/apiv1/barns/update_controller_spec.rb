require 'rails_helper'

RSpec.describe Apiv1::Barns::UpdateController, type: :controller do

  let(:barn) { Apiv1::Tile.create! tile_type: :barn, x: 1, y: 2 }
  let(:update) { put :update, barn: @params, id: barn.id }

  describe "PUT update" do
    before do
      @params = {
        status: :waiting
      }
      update
    end
    subject { JSON.parse(response.body)["barn"]["status"] }
    specify { should eq "waiting" }
  end

end
