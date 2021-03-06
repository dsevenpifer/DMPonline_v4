source 'https://rubygems.org'

gem 'rails', '~>3.2.22'

# pin this to post-CVE 2017-5946
gem 'rubyzip', '~> 1.2.3'

# pin the following dependencies to work with Ruby 2.1 and Rails 3
gem 'arbre','1.1.1'
gem 'rb-inotify','0.9.10'
gem 'public_suffix','3.0.3'
gem 'bourbon','4.2.7'

gem 'mysql2', '~>0.3.20'
gem 'omniauth'
gem 'omniauth-shibboleth'

# pin recaptcha to work with Ruby 2.1 and Rails 3
# some work is required to upgrade to 4.9. So pinned it to 3.x for now
gem 'recaptcha', '3.4.0'
gem 'i18n'
gem 'globalize', '~>3.1.0'
gem 'dragonfly'

# added rollbar for log monitoring
gem 'rollbar'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'
end

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem "letter_opener"
end

gem 'uglifier'
gem 'less-rails'

gem 'twitter-bootstrap-rails', '~> 2.2.8'
gem 'sass-rails',   '~> 3.2.3'
gem 'sass'

gem 'jquery-rails'
#gem 'jquery-ui-rails'

gem 'tinymce-rails'
gem 'friendly_id'
gem 'contact_us'

#implementation of forms
gem 'activeadmin', '1.0.0.pre1'

#to allow cloning of objects
gem 'amoeba'

# devise for user authentication
gem 'devise'
gem 'devise_invitable'

#cancan for usergroups
gem 'cancan'

#to notify admin of errors
gem 'exception_notification'

#rolify for roles
gem 'rolify'
# Gems for repository integration
gem 'email_validator'
gem 'validate_url'
# gem 'sword2ruby'

gem 'thin'
# Pinned this version for Ruby 2.1 and Rails 3
gem 'wicked_pdf','1.1.0'
gem 'htmltoword'
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

group :development, :test do
  gem 'rspec-rails'
  gem 'rspec'
  # pinned this version to current version. Leave for the test setup to be completed
  gem 'selenium-webdriver', '2.53.4'

  # pint this to issue 115 - security warning
  gem 'mail', '~> 2.5.5'
  gem 'pdf-reader'

  # pint this to issue 115 - security warning
  gem 'nokogiri', '~> 1.7.2'
end

group :production do
  gem 'therubyracer', '0.11.4', platforms: :ruby
  gem 'libv8'
end

group :production, :staging do
  gem 'syslog-logger'
end

group :ci do
  gem 'ci_reporter', '1.9.2'
end

gem 'ledermann-rails-settings'
gem 'jbuilder'
