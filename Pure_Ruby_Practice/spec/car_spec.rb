# frozen_string_literal: true

require 'car'
require 'shared_examples/a_standard_vehicle'

describe Car do
  it_behaves_like('a standard vehicle')

  it 'allows reading and writing for :doors' do
    subject.doors = 1
    expect(subject.doors).to eq(1)
  end

  describe '#initialize' do
    it 'defaults to 4 doors ' do
      expect(subject.doors).to eq(4)
    end

    it 'allows setting a new number of doors' do
      car = Car.new(doors: 2)
      expect(car.doors).to eq(2)
    end

    it 'defaults to 4 if options is neither 2 or 4' do
      door_counts = []
      [0, 1, 3, 5, 6].each do |n|
        car = Car.new(doors: n)
        door_counts << car.doors
      end
      expect(door_counts).to all(eq(4))
    end
  end

  describe '.colours' do
    let(:colours) { %w[blue black red green] }

    it 'returns an array of colour names' do
      expect(Car.colours).to match_array(colours)
    end
  end

  describe '#full_name' do
    let(:honda) { Car.new(make: 'Honda', year: 2004, colour: 'blue') }
    let(:new_car) { new_car = Car.new }

    it 'returns a string in the expected format' do
      expect(honda.full_name).to eq('2004 Honda (blue)')
    end

    context 'when initialized with no arguments' do
      it 'returns a string using default values' do
        expect(new_car.full_name).to eq('2007 Volvo (unknown)')
      end
    end
  end

  describe '#coupe?' do
    it 'returns true if it has 2 doors' do
      car = Car.new(doors: 2)
      expect(car.coupe?).to be true
    end

    it 'returns false if it does not have 2 doors' do
      car = Car.new(doors: 4)
      expect(car.coupe?).to be false
    end
  end

  describe '#sedan?' do
    it 'returns true if it has 2 doors' do
      car = Car.new(doors: 4)
      expect(car.sedan?).to be true
    end

    it 'returns false if it does not have 2 doors' do
      car = Car.new(doors: 2)
      expect(car.sedan?).to be false
    end
  end
end
