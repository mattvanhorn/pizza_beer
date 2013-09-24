require 'spec_helper'

describe EstimatesController do
  describe '#create' do
    let(:fake_class) { Class.new }
    let(:estimate) { double('fake_estimate', :guest_count= => nil) }
    let(:estimate_params){ {'guest_count' => '10', 'slice_count' => '2'} }

    before(:each) do
      fake_class.stub(:new => estimate)
      stub_const("Estimate", fake_class)
    end

    it "creates an estimate" do
      expect(fake_class).to receive(:new).with(estimate_params).and_return(estimate)
      post :create, 'estimate' => estimate_params
    end

    it "assigns the estimate" do
      post :create, 'estimate' => estimate_params
      expect(assigns(:estimate)).to equal(estimate)
    end

    it "renders the show template" do
      post :create, 'estimate' => estimate_params
      expect(response).to render_template("show")
    end
  end
end
