# frozen_string_literal: true

# Car that is produced in factory
class Car
  def initialize(array)
    @car_type = array[0]
    @seats = array[1]
    @engine = array[2]
    @doors = array[3]
    @multimedia = array[4]
    @suspension = array[5]
    @electrical_system = array[6]
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
    array = ['Normal', 5, 'V-4', 4, 'KenWood', 'Spring', 'Silver']
    my_object = Car.new(array)
    @cars << my_object
    my_object.display
  end

  def produce_custom_car(array)
    my_object = Car.new(array)
    @cars << my_object
    my_object.display
  end

  def cars_counts
    puts "Number of car produced in factory  = #{@cars.size}"
  end
end

factory = Factory.new
factory.produce_car

array = ['Custom', 4, 'V-8', 4, 'Boss', 'Air Suspension', 'Copper']
factory.produce_custom_car(array)
factory.cars_counts
