# frozen_string_literal: true

# Subscribers Class
class Subscriber
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def notify(news)
    puts "#{name} (Subscriber): News is :  #{news}"
  end
end
