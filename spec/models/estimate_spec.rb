require 'spec_helper'

describe Estimate do
  let(:estimate){ Estimate.new }

  it "can get and set a guest count" do
    estimate.guest_count = 10
    expect(estimate.guest_count).to eq(10)
  end

  it "can get and set a slice count" do
    estimate.slice_count = 2
    expect(estimate.slice_count).to eq(2)
  end

  it "calculates the number of slices" do
    estimate.guest_count = 10
    estimate.slice_count = 2
    expect(estimate.slices).to eq(20)
  end

  it "calculates the number of pies" do
    estimate.guest_count = 8
    estimate.slice_count = 2
    expect(estimate.pies).to eq(2)
  end

  it "rounds the number of pies up to the nearest pie" do
    estimate.guest_count = 10
    estimate.slice_count = 2
    expect(estimate.pies).to eq(3)
  end
end
