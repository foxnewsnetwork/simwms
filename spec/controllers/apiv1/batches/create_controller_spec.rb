require 'rails_helper'

RSpec.describe Apiv1::Batches::CreateController, type: :controller do
  let(:appointment) { Apiv1::Appointment.create! @appointment }
  let(:weighticket) { Apiv1::Weighticket.create! @weighticket }
  let(:warehouse) { Apiv1::Tile.create! @warehouse }
  before do
    @appointment = {
      company: "Seed Test Company",
      notes: "This appointment is a generated seed test",
      material_description: "100 tons of dog food",
      expected_at: 1.day.ago
    }
    @weighticket = {
      license_plate: '666-hail-satan',
      target_dock: '5',
      pounds: 50000,
      issuer_id: '234234',
      notes: 'fake junk',
      appointment: appointment
    }
    @warehouse = {
      tile_type: "warehouse",
      tile_name: "charlie-bravo",
      status: :empty
    }
    warehouse
  end
  let(:create) { post :create, batch: @batch }
  describe 'factories' do
    context 'weighticket' do
      subject { weighticket }
      specify { should be_a Apiv1::Weighticket }
      specify { should be_persisted }
    end
    context 'warehouse' do
      subject { Apiv1::Warehouse.empty_warehouse.first }
      specify { should be_a Apiv1::Warehouse }
      specify { should be_persisted }
    end
  end
  describe '#create' do
    before do
      @batch = {
        weighticket_id: weighticket.id,
        description: "some sort of stuff",
        entry_dock_id: "fjlkasdjf2"
      }
    end
    context 'status' do
      before { create }
      subject { response.status }
      specify { should eq 200 }
    end
    context 'change to db' do
      subject { -> { create } }
      specify { should change(Apiv1::Batch, :count).by 1 }
    end
    context 'response' do
      before { create }
      let(:json) { JSON.parse(response.body)['batch'] }
      context 'presence' do
        subject { json }
        specify { should be_present }
      end
      context 'id' do
        subject { json['id'] }
        specify { should be_present }
      end
      context 'appointment_id' do 
        subject { json['appointment_id'] }
        specify { should eq appointment.id }
      end
      context 'warehouse_id' do
        subject { json['warehouse_id'] }
        specify { should eq warehouse.id }
      end
      context 'weighticket_id' do
        subject { json['weighticket_id'] }
        specify { should eq weighticket.id }
      end
      context 'entry_dock_id' do
        subject { json['entry_dock_id'] }
        specify { should eq "fjlkasdjf2" }
      end
    end
  end

end
