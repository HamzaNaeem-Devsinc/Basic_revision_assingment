# frozen_string_literal: true

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
