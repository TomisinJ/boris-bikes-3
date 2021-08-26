require "docking_station.rb" 
describe Docking_Station do
  it { is_expected.to respond_to :release_bike } 
  it "will release a working bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end 
  
  it "docks bike" do 
    bike = Bike.new 
    expect(subject.dock(bike)).to eq bike 
  end

  it "return docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end 
  
end