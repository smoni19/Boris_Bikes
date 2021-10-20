require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'is bike working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to respond_to(:working?)
  end

  #it { is_expected.to respond_to(:dock).with(1).argument }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  #it { is_expected.to respond_to(:bike) }
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end 