require 'spec_helper'

describe 'Estimates routing' do
  it "should route the home page" do
    expect(:get => '/').to route_to(
      :controller => "estimates",
      :action => "new"
    )
  end
  it "should route the estimate page" do
    expect(:post => '/estimates').to route_to(
      :controller => "estimates",
      :action => "create"
    )
  end
end
