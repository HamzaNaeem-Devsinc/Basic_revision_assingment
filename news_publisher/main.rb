require_relative 'class_publisher'
require_relative 'class_subscriber'

publisher = Publisher.new
subscriber1 = Subscriber.new('Hamza')
subscriber2 = Subscriber.new('Ali')
publisher.add_subscriber(subscriber1)
publisher.add_subscriber(subscriber2)

publisher.publish_news('Today is good Weather')
publisher.publish_news('Fawad Chaudhary Leaves PTI')
publisher.publish_news('Pervaiz Illahi not leaving PTI')
publisher.publish_news('Pervaiz Illahi arrested')
