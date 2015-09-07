require 'car'
require 'shared_examples/a_standard_vehicle'

describe Car do

  it_behaves_like('a standard vehicle')

  describe '.colours' do

    let(:colours) { ['blue', 'black', 'red', 'green'] }

    it "returns an array of colour names" do
      expect(Car.colours).to match_array(colours)
    end
  end

  describe '#full_name' do

    let(:honda) { Car.new(make: 'Honda', year: 2004, colour: 'blue') }
    let(:new_car) { new_car = Car.new }

    it "returns a string in the expected format" do
      expect(honda.full_name).to eq('2004 Honda (blue)')
    end

    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        expect(new_car.full_name).to eq ('2007 Volvo (unknown)')
      end
    end
  end

end