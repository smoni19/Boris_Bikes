require 'docking_station'

describe DockingStation do
  bike = Bike.new
  
  describe '#release_bike' do
    it 'releases a bike if capacity > 0' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  it 'is bike working' do
    expect(bike).to respond_to(:working?)
  end

  it 'docks something' do
    expect(subject.dock(bike)).to eq bike
  end

  it 'doesn\'t dock a bike if capacity reached' do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect { subject.dock(bike) }.to raise_error 'No capacity at docking station'
  end

  it 'can dock up to 20 bikes' do
    ((DockingStation::DEFAULT_CAPACITY) - 1).times { subject.dock(Bike.new) }
    expect(subject.dock(bike)).to eq bike
  end

  it 'initialising with integer argument changes capacity' do
    new_docking_station = DockingStation.new(15)
    expect(new_docking_station.capacity).to eq 15
  end

  it 'default capacity is set to 20 when no arguments are passed' do
    new_docking_station = DockingStation.new
    expect(new_docking_station.capacity).to eq 20
  end

end