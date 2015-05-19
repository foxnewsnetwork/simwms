require 'rails_helper'

RSpec.describe Apiv1::Weightickets::CreateController, type: :controller do

  let(:create) { post :create, weighticket: @params }

  describe "POST create" do
    before do
      @params = {
        appointment_number: 'ABCD-1234',
        license_plate: 'XYZ-1234'
      }
      create
    end
    subject { JSON.parse(response.body)["weighticket"] }
    specify { should be_present }
  end

end
