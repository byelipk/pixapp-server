namespace :run do
  task :server do
    if Rails.env.development? || Rails.env.test?
      exec("rails server -b 127.0.0.1 -p 3000")
    end
  end
end
