require 'rails_helper'

RSpec.describe Apiv1::Weightickets::CreateController, type: :controller do

  let(:create) { post :create, weighticket: @params }
  let(:make_file) { -> { Rack::Test::UploadedFile.new(Rails.root.join("public", "ahegao.jpg"), "image/jpeg") } }
  describe "making pictures" do
    before do
      @params = {
        appointment_number: 'ABCD-1234',
        license_plate: 'XYZ-1234',
        files: [make_file.call, make_file.call]
      }
    end
    subject { -> { create } }
    specify { should change(Apiv1::Picture, :count).by 2 }
  end
  describe "POST create" do
    before do
      @params = {
        appointment_number: 'ABCD-1234',
        license_plate: 'XYZ-1234',
      }
      create
    end
    subject { JSON.parse(response.body)["weighticket"] }
    specify { should be_present }
  end

end
