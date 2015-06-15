require 'rails_helper'

RSpec.describe Apiv2::TilesController, type: :controller do
  let(:create) { post :create, tile: @tile_params }
  describe 'success' do
    before do
      @tile_params = {
        material_description: "sousei no aquarion",
        company: "akino with bless4",
        expected_at: DateTime.now,
        notes: "animu version"
      }
    end
  end
end
