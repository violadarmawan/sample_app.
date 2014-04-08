source 'https://rubygems.org'
ruby '2.1.1'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.4'
gem 'bootstrap-sass', '2.3.2.0'
gem 'sprockets', '2.11.0'
# Bcrypt ruby for making irreversibly transform password to password hash
gem 'bcrypt-ruby', '3.1.2'
gem 'faker', '1.1.2'
gem 'will_paginate', '3.0.4'
gem 'bootstrap-will_paginate', '0.0.9'

group :development, :test do
  gem 'sqlite3', '1.3.9'
  gem 'rspec-rails', '2.13.1'
  # The following optional lines are part of the advanced setup.
  gem 'spork', ('>= 1.0rc0')
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.5.1'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.0'
  gem 'cucumber-rails', '1.4.0', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'

  # Uncomment this line on OS X.
  gem 'growl', '1.0.3'

  # Uncomment these lines on Linux.
  # gem 'libnotify', '0.8.0'

  # Uncomment these lines on Windows.
  # gem 'rb-notifu', '0.0.4'
  # gem 'win32console', '1.3.2'
  # gem 'wdm', '0.1.0'
end

gem 'sass-rails', '4.0.2'
gem 'uglifier', '2.5.0'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'turbolinks', '2.2.1'
gem 'jbuilder', '1.0.2'

group :doc do
  gem 'sdoc', '0.4.0', require: false
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
end