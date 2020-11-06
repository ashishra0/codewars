require_relative '../../lib/6kyu/smart_traffic_lights.rb'

RSpec.describe SmartTrafficLight do

  let(:obj) { SmartTrafficLight.new([42, "27th ave"], [72, "3rd st"])}
  let(:obj1) { SmartTrafficLight.new([10, "27th ave"], [10, "3rd st"])}

  it 'should initialize with valid arguments' do
    expect(obj).to be_an_instance_of(SmartTrafficLight)
  end

  it 'should raise exception if no arguments provided' do
    expect { SmartTrafficLight.new }.to raise_error(ArgumentError)
  end

  it 'should return the name of road with most traffic' do
    expect(obj.turn_green).to eq("3rd st")
  end

  it 'should return the name of road with second most traffic' do
    obj.turn_green # "3rd st"

    expect(obj.turn_green).to eq("27th ave")
  end

  it 'should return nil if traffic is equal on both roads' do
    expect(obj1.turn_green).to eq(nil)
  end
end