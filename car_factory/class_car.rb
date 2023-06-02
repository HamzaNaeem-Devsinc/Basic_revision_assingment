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
