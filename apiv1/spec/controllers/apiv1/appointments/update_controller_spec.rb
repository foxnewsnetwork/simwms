require 'rails_helper'

RSpec.describe Apiv1::Appointments::UpdateController, :type => :controller do
  let(:appointment) { Apiv1::Appointment.create! @original_params }
  let(:update) { put :update, appointment: @new_params, id: appointment.id }
  let(:cancel_time) { DateTime.now }
  context 'success' do
    before do
      @original_params = {
        material_description: "Some sort of horseshit",
        company: "Horse Poop Org",
        notes: "Nothing much to say"
      }
      @new_params = {
        cancelled_at: cancel_time
      }
      appointment
    end
    context 'response.status' do
      before { update }
      subject { response.status }
      specify { should eq 200 }
    end
    context 'response.body' do
      before { update }
      let(:json) { JSON.parse response.body }
      describe "[id]" do
        subject { json["appointment"]["id"] }
        specify { should eq appointment.id }
      end
      describe "[material_description]" do
        subject { json["appointment"]["material_description"] }
        specify { should eq @original_params[:material_description] }
      end
      describe "[company]" do
        subject { json["appointment"]["company"] }
        specify { should eq @original_params[:company] }
      end
      describe "[notes]" do
        subject { json["appointment"]["notes"] }
        specify { should eq @original_params[:notes] }
      end
      describe "[cancelled_at]" do
        subject { DateTime.parse json["appointment"]["cancelled_at"] }
        specify { should eq @new_params[:cancelled_at] }
      end
      describe "[status]" do
        subject { json["appointment"]["status"] }
        specify { should eq "cancelled" }
      end
    end
  end
end
