source 'https://rubygems.org'

gem 'rails', git: "git://github.com/rails/rails.git", branch: "master"
gem 'pg', '~> 0.18.4'
gem 'puma'

# Use ActiveModel has_secure_password
gem 'bcrypt', git: 'git://github.com/codahale/bcrypt-ruby.git', branch: 'master'

# ActiveModel::Otp for Two Factor Authentication (TFA).
gem 'active_model_otp'

# NOTE
# Rails default frontend asset pipeline
# gem 'sass-rails', '~> 5.0'
# gem 'coffee-rails', '~> 4.1.0'
# gem 'jquery-rails'
# gem 'turbolinks', '~> 5.x'

group :development, :test do
  gem 'pry'
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'pry-stack_explorer'

  gem 'faker'
  gem 'fabrication'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  gem 'annotate'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


# File uploading and image manipulation
gem 'fog'
gem 'fog-aws'
gem 'mini_magick'
gem 'carrierwave'

# Serialize model into JSON objects
gem 'active_model_serializers', '0.10.0.rc5'

# Organize models into a tree using PostgreSQL's ltree datatype
gem 'ltree_hierarchy'

# Free performance
gem 'fast_blank'
gem 'fast_xs'
gem 'fast_xor'
gem 'hiredis'

# Background job processing
gem 'sidekiq'

# I <3 Redis
gem 'redis'

# Authorization
gem 'pundit'

# Secure configuration
gem 'figaro'
