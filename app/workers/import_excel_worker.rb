class ImportExcelWorker
  include Sidekiq::Worker
  sidekiq_options retry: false	

  def perform

  	puts "Yes Back ground Job is running"
  end
end