# frozen_string_literal: true

require_relative 'class_factory'
require_relative 'class_car'

factory = Factory.new
factory.produce_car
array = ['Custom', 4, 'V-8', 4, 'Boss', 'Air Suspension', 'Copper']
factory.produce_custom_car(array)
factory.cars_counts
