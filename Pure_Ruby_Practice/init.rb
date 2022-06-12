#!/usr/bin/env ruby

# frozen_string_literal: true

require_relative('lib/car')

puts
puts 'Enter information for the car you want to purchse.'
puts

print 'Make: '
make = gets.chomp

print 'Year: '
year = gets.chomp

print 'Colour: '
colour = gets.chomp

print 'Doors: '
doors = gets.chomp

car = Car.new(make: make, year: year, colour: colour, doors: doors)

puts
puts "I understand that you want to purchase:
#{car.full_name}."
puts
