require "docking_station.rb" 
describe Docking_Station do
  it { is_expected.to respond_to :release_bike } 
  it "will release a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end