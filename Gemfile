source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'devise'

gem 'bootstrap-sass'

gem "therubyracer"
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS

gem 'bcrypt-ruby', '3.0.1'

gem 'faker', '1.0.1'

gem 'simple-private-messages', '0.0.0', :git => 'git://github.com/jongilbraith/simple-private-messages.git'

gem "rinku", :require => "rails_rinku"

# Rinku.auto_link(text, mode=:all, link_attr=nil, skip_tags=nil)
# Rinku.auto_link(text, mode=:all, link_attr=nil, skip_tags=nil) { |link_text| ... }

gem 'will_paginate', '3.0.3'
gem 'bootstrap-will_paginate', '0.0.6'

gem 'twitter-text'

gem 'twitter'

gem "socialization"

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
gem 'sqlite3'
gem 'rspec-rails'
end

group :development do
  gem 'annotate', '2.5.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem "jquery-rails", "~> 2.1.4"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

group :test do
  gem 'capybara'
  gem 'factory_girl_rails', '4.1.0'
end

group :production do
  gem 'pg'
end

