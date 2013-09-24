require 'spec_helper'

describe GuestsController do
  let(:fake_class) { Class.new }
  let(:guest) { double() }
  let(:guest_params){ {'email' => 'alice@example.com'} }

  before(:each) do
    fake_class.stub(:create => guest)
    stub_const("Guest", fake_class)
  end

  describe '#index' do
    it "finds the guests" do
      expect(fake_class).to receive(:all).and_return([])
      get :index
    end

    it "assigns the guest list" do
      fake_list = []
      fake_class.stub(:all => fake_list)
      get :index
      expect(assigns(:guests)).to eq(fake_list)
    end
  end

  describe '#create' do
    it "creates a guest" do
      expect(fake_class).to receive(:create).with(guest_params).and_return(guest)
      post :create, 'guest' => guest_params
    end

    it "redirects to the guest list" do
      post :create, 'guest' => guest_params
      expect(response).to redirect_to(guests_url)
    end
  end
end
