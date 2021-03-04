require "docking_station"

describe DockingStation do
  bike = Bike.new
  it { is_expected.to respond_to :release_bike }

  describe '#release_bike' do
    it 'raises an error when no bikes are available' do
      subject.bike = nil
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
    it 'releases a bike' do
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  it { is_expected.to respond_to(:dock).with(1).argument}
  it 'docks something' do
    expect(subject.dock(bike)).to eq bike
  end
  it 'returns docked bikes' do
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  it "raises an error when the station is already full" do
     subject.bike = Bike.new 
    expect { subject.dock(bike) }.to raise_error 'Station is full'
  end

end
