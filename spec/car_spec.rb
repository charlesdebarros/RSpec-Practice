require 'car'

describe 'Car' do

  it "allows reading for :wheels" do 

  end

  describe '.colours' do
    it "returns an array of colour names" do
      c = ['blue', 'black', 'red', 'green']
      expect(Car.colours).to match_array(c)
    end
  end

  # or
  # context '.colours' do
  #   it "returns an array of colour names" do

  #   end
  # end

end