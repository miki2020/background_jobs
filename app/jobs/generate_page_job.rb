class GeneratePageJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    sleep 5
    page = Page.new(args[0])
    page.save

  end
end
