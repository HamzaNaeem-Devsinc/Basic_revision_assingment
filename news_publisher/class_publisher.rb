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
