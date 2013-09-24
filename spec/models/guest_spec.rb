describe Guest do
  let(:guest){ Guest.new }
  it "gets and sets an email address" do
    guest.email = 'alice@example.com'
    expect(guest.email).to eq('alice@example.com')
  end
end
