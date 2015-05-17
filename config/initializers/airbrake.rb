if ENV['AIRBRAKE_API_KEY']
  Airbrake.configure do |config|
    config.api_key = ENV['AIRBRAKE_API_KEY']
    config.host    = ENV['AIRBRAKE_HOST'] if ENV['AIRBRAKE_HOST']
  end

  if defined? Sidekiq
    Sidekiq.configure_server do |config|
      config.error_handlers << Proc.new {|ex,ctx_hash| Airbrake.notify(ex, ctx_hash) }
    end
  end
end
