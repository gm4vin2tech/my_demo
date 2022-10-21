class UserLoggerJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    # binding.pry
    # email = args[0].email
    # UserMailer.acknowledge_mail(email).deliver!
     require 'csv'
    headers = ['column one', 'column two', 'column three']

    csv_data = CSV.generate(headers: true) do |csv|
      csv << headers
      csv << ["A", "B", "C"]
    end
    print csv_data

    # send_data csv_data, filename: "data-#{Date.today.to_s}.csv", disposition: :attachment
  end
end
