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

#my_object = MyClass.new(value)
#my_object.print_value

subscriber1 = Subscriber.new("Hamza")
subscriber2 = Subscriber.new("Ali")
publisher.add_subscriber(subscriber1)
publisher.add_subscriber(subscriber2)

publisher.publish_news("COVID-19 cases on the rise!")
publisher.publish_news("Imran khan arrested")


