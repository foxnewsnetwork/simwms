require 'rails_helper'

RSpec.describe Apiv1::Appointments::CreateController, :type => :controller do
  let(:create) { post :create, appointment: @appointment_params }
  describe 'success' do
    before do
      @appointment_params = {
        material_description: "sousei no aquarion",
        company: "akino with bless4",
        expected_at: DateTime.now,
        notes: "animu version"
      }
    end
    context 'creation' do
      subject { -> { create } }
      specify { should change(Apiv1::Appointment, :count).by 1 }
    end
    context 'response.status' do
      before { create }
      subject { response.status }
      specify { should eq 200 }
    end
    context 'response.body' do
      before { create }
      subject { JSON.parse response.body }
      specify { should be_present }
      context 'company_permalink' do
        subject { JSON.parse(response.body)["appointment"]["company_permalink"] }
        specify { should =~ /kn-wth-blss4/ }
      end
      context 'expected_at' do
        subject { DateTime.parse JSON.parse(response.body)["appointment"]["expected_at"] }
        specify { should > 1.day.ago }
        specify { should < 1.day.from_now }
      end
    end
  end
end
