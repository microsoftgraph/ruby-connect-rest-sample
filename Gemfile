source 'https://rubygems.org'
ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '5.2.0'
# Use a legacy version of Rack which supports Ruby 2.1.9
gem 'rack', '2.0.5'
# Use sqlite3 as the database for Active Record
# 2.5 compatible version isn't released yet, so point to GitHub
gem 'sqlite3', git: 'https://github.com/sparklemotion/sqlite3-ruby'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '5'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', group: :doc

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger
  # console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]

  gem 'listen', '>= 3.0.5', '< 3.2'

  gem 'rubocop', '0.57.0', require: false

  # Spring speeds up development by keeping your application running in the
  # background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '>= 3.3.0'
end

# Authentication resources
omniauth_src = 'https://github.com/cbales/omniauth-microsoft_graph'
gem 'omniauth-microsoft_v2_auth', git: omniauth_src

# On Windows systems we need tzinfo-data
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Monitor for changes on Windows systems
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
