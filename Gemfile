source 'https://rubygems.org'

ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5.1'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Use unicorn as web server
gem 'unicorn'

# Flexible authentication solution for Rails with Warden
gem 'devise'

# Simple Rails app configuration
gem 'figaro'

# Specific production gems
group :production do
  gem 'pg'                              # Use postgresql as the database for Active Record
  gem 'rails_12factor'                  # makes running your Rails app easier
end

# Development gems
group :development, :test do
  gem 'capistrano'
  gem 'rvm-capistrano',  require: false
  gem 'sqlite3'                         # use sqlite3 as the database in development mode
  gem 'byebug'                          # debugging in Ruby 2
  gem 'web-console', '~> 2.0'           # rails Console on the Browser
  gem 'spring'                          # rails application preloader
  gem 'foreman'                         # manage Procfile-based applications
  gem 'pry-rails'                       # this is a small gem which causes rails console to open pry
  gem 'git'                             # repository
  gem 'better_errors'                   # replaces the standard Rails error page with a much better and more useful error page
  gem 'binding_of_caller'               # retrieve the binding of a method's caller
  gem 'pry'                             # an IRB alternative and runtime developer console
  gem 'quiet_assets'                    # mutes assets pipeline log messages
  gem 'rails_best_practices'            # a code metric tool to check the quality of rails code
  gem 'bullet'                          # increase application performance by reducing the number of queries it makes
  gem 'wirb'                            # WIRB syntax highlights Ruby objects
  gem 'hirb'                            # mini view framework for console applications and uses it to improve ripl(irb)'s default inspect output
  gem 'awesome_print'                   # a Ruby library that pretty prints Ruby objects in full color exposing their internal structure with proper indentation
  gem 'lol_dba'                         # scan application models and displays a list of columns that probably should be indexed
  gem 'rspec-rails', '~> 3.0.0'         # testing framework
  gem 'factory_girl_rails'              # a library for setting up Ruby objects as test data
  gem 'cucumber-rails', require: false  # Rails Generators for Cucumber with special support for Capybara and DatabaseCleaner
  gem 'launchy'                         # a helper for launching cross-platform applications in a fire and forget manner.
  gem 'database_cleaner'                # used to ensure a clean state for testing
  gem 'capybara', :git => 'git://github.com/jnicklas/capybara.git'        # acceptance test framework for web applications
  gem 'annotate', :git => 'https://github.com/ctran/annotate_models.git'  # add a comment summarizing the current schema
end
