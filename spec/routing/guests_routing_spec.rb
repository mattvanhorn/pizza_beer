require 'spec_helper'

describe 'Guests routing' do
  it "should route the index page" do
    expect(:get => '/guests').to route_to(
      :controller => "guests",
      :action => "index"
    )
  end
  it "should route the create action" do
    expect(:post => '/guests').to route_to(
      :controller => "guests",
      :action => "create"
    )
  end
end
