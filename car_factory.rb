# frozen_string_literal: true

class Car
  attr_accessor :seats, :engine, :doors, :multimedia, :suspension, :electrical_system

  def initialize(seats, engine, doors, multimedia, suspension, electrical_system)
    @seats = seats
    @engine = engine
    @doors = doors
    @multimedia = multimedia
    @suspension = suspension
    @electrical_system = electrical_system
  end

  def display_details
    puts 'Car Details:'
    puts "Seats: #{@seats}"
    puts "Engine: #{@engine}"
    puts "Doors: #{@doors}"
    puts "Multimedia: #{@multimedia}"
    puts "Suspension: #{@suspension}"
    puts "Electrical System: #{@electrical_system}"
    puts '-------------------------------'
  end
end

class CarFactory
  @@instance = nil
  attr_reader :cars

  private_class_method :new

  def self.instance
    @@instance ||= new
  end

  def initialize
    @cars = []
  end

  def create_car(seats: 5, engine: 'V6', doors: 4, multimedia: 'Basic', suspension: 'Standard',
                 electrical_system: 'Standard')
    car = Car.new(seats, engine, doors, multimedia, suspension, electrical_system)
    @cars << car
    car
  end

  def get_car_count
    @cars.size
  end
end

factory.create_car(seats: 4, engine: 'V8', multimedia: 'Advanced')
factory.create_car

puts "Total cars produced: #{Carfactory.get_car_count}"
