class TaskLoggerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "TaskLoggerJob is performed"
  end
end
