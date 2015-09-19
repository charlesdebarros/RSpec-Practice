class Car

  attr_accessor :make, :year, :colour, :doors
  attr_reader :wheels

  def initialize(options={})
    self.make     = options[:make] || 'Volvo'
    self.year     = (options[:year] || 2007).to_i
    self.colour   = options[:colour] || 'unknown'
    self.doors    = options[:doors] || 4
    self.doors    = 4 unless [2,4].include?(doors)
    @wheels = 4
  end

  def self.colours
    ['blue', 'black', 'red', 'green']
  end

  def full_name
    "#{self.year.to_s} #{self.make} (#{self.colour})"
  end

  def coupe?
    doors == 2
  end

  def sedan?
    doors == 4
  end

end