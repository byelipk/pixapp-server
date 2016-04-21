# Config ActiveJob
ActiveJob::Base.queue_name_prefix    = Rails.env
ActiveJob::Base.queue_name_delimiter = '.'

# NOTE
# When we launch Sidekiq we need to explicit
# tell it to watch the queues we are using:
#
# `sidekiq -q development.default -q development.pictures`

if Rails.env.test?
  ActiveJob::Base.queue_adapter = :inline
else
  ActiveJob::Base.queue_adapter = :sidekiq
end
