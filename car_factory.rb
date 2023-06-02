# frozen_string_literal: true

# Car that is produced in factory
class Car
  def initialize(type, seats, engine, doors, multimedia, suspension, electrical_system)
    @car_type = type
    @seats = seats
    @engine = engine
    @doors = doors
    @multimedia = multimedia
    @suspension = suspension
    @electrical_system = electrical_system
  end

  def display
    puts "Car Type = #{@car_type}"
    puts "Seats in car = #{@seats}"
    puts "Engine of car= #{@engine}"
    puts "Number of Doors = #{@doors}"
    puts "Multimedia Type = #{@multimedia}"
    puts "Suspension Type = #{@suspension}"
    puts "Electrical system of car = #{@electrical_system}"
    puts '------------------------'
  end
end

# Factory which Produce Car
class Factory
  def initialize
    @cars = []
  end

  def produce_car
    my_object = Car.new('Normal', 5, 'V-4', 4, 'KenWood', 'Spring', 'Silver')
    @cars << my_object
    my_object.display
  end

  def produce_custom_car(type, seats, engine, doors, multimedia, suspension, electrical_system)
    my_object = Car.new(type, seats, engine, doors, multimedia, suspension, electrical_system)
    @cars << my_object
    my_object.display
  end

  def cars_counts
    puts "Number of car produced in factory  = #{@cars.size}"
  end
end

factory = Factory.new
factory.produce_car
factory.produce_custom_car('Custom', 4, 'V-8', 4, 'Boss', 'Air Suspension', 'Copper')
factory.produce_custom_car('Sports', 2, 'V-6', 2, 'Boom Master', 'Sports', 'Copper-Gold')
factory.cars_counts
