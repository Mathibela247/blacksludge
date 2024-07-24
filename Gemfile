source "https://rubygems.org"
ruby "3.1.2"
# Use main development branch of Rails
gem "rails", github: "rails/rails", branch: "main"
# The modern asset pipeline for Rails [https://github.com/rails/propshaft]
gem "propshaft"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mswin mswin64 mingw x64_mingw jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Deploy this application anywhere as a Docker container [https://kamal-deploy.org]
gem "kamal", require: false

gem 'devise'
gem 'cancancan'
gem 'draper'
gem 'pundit'
gem 'sass-rails'
gem 'event-calendar', :require => 'event_calendar'
gem "simple_calendar"
gem 'devise_invitable'
gem "image_processing", "~> 1.2"
gem "cssbundling-rails", "~> 1.1"
gem 'jsbundling-rails'
gem "city-state", "~> 0.1.0"
gem 'phonelib'
gem 'activeadmin'
gem "icalendar", "~> 2.8"
gem "rqrcode", "~> 2.2"
# gem "ransack", "~> 3.2"
gem "font-awesome-sass"
gem "jquery-easing-rails", "~> 0.0.2"
gem 'acts_as_votable'
gem "view_component"
gem 'rotp'
gem 'mail'
gem "tailwindcss-rails", "~> 2.3"
# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]


group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mswin mswin64 mingw x64_mingw ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end