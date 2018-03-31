class ExampleJob < ApplicationJob
  queue_as :default

  def perform
    puts 'perform ExampleJob !!'
  end
end
