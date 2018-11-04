# schedule_file = "config/schedule.yml"

# if File.exists?(schedule_file) && Sidekiq.server?
#   Sidekiq::Cron::Job.load_from_hash YAML.load_file(schedule_file)
# end

require 'sidekiq'

	# Sidekiq.configure_server do |config|
	#   config.redis = { :namespace => 'master', :url => 'redis://127.0.0.1:6379/2' }
	#   schedule_file = "config/schedule.yml"

	#   if File.exists?(schedule_file) && Sidekiq.server?
	#     Sidekiq::Cron::Job.load_from_hash! YAML.load_file(schedule_file)
	#   end
	# end
