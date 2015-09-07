require 'car'

describe 'Car' do

  describe 'attributes' do

    let(:car) { Car.new }

    # 'let' is better than 'before' for
    # setting up instance variables
    # before(:example) do 
    #   @car = Car.new
    # end

    it "allows reading and writing for :make" do
      car.make = 'Test'
      expect(car.make).to eq('Test')
    end

    it "allows reading and writing for :year" do
      car.year = 9999
      expect(car.year).to eq(9999)
    end

    it "allows reading and writing for :colour" do
      car.colour = 'foo'
      expect(car.colour).to eq('foo')
    end

    it "allows reading for :wheels" do
      expect(car.wheels).to eq(4)
    end

    it "allows writing for :doors" 

  end

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