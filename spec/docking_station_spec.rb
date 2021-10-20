require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike) }

  it 'is bike working' do
    docking_station = DockingStation.new
    bike = docking_station.release_bike
    expect(bike).to respond_to(:working?)
  end

end 