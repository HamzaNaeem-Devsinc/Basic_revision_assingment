# frozen_string_literal: true

# publisher class
class Publisher
  attr_reader :subscribers

  def initialize
    @subscribers = []
  end

  def add_subscriber(subscriber)
    @subscribers << subscriber
  end

  def publish_news(news)
    notify_subscribers(news)
  end

  private

  def notify_subscribers(news)
    @subscribers.each { |subscriber| subscriber.notify(news) }
  end
end

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

publisher = Publisher.new
subscriber1 = Subscriber.new('Hamza')
subscriber2 = Subscriber.new('Ali')
publisher.add_subscriber(subscriber1)
publisher.add_subscriber(subscriber2)

publisher.publish_news('Today is good Weather')
publisher.publish_news('Fawad Chaudhary Leaves PTI')
publisher.publish_news('Pervaiz Illahi not leaving PTI')
publisher.publish_news('Pervaiz Illahi arrested')
