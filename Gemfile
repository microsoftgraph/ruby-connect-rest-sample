source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'
# Use a legacy version of Rack which supports Ruby 2.1.9
gem 'rack', '1.6.2'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'

  gem 'rubocop', '0.34.2', :require => false
end

# Authentication resources
gem 'omniauth-microsoft_v2_auth', :git => "git://github.com/cbales/omniauth-microsoft_graph"

# On Windows systems we need tzinfo-data
gem 'tzinfo-data'
