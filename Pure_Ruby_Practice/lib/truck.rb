class Truck

  attr_accessor :make, :year, :colour
  attr_reader :wheels
  attr_writer :doors

  def initialize(options={})
    self.make     = options[:make] || 'Ford'
    self.year     = (options[:year] || 2007).to_i
    self.colour   = options[:colour] || 'unknown'
    @wheels = 4
  end

  def self.colours
    ['blue', 'black', 'red', 'green', 'white']
  end

  def full_name
    "#{self.year.to_s} #{self.make} Truck (#{self.colour})"
  end

end