source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.5' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'puma'
gem 'rails_12factor',  group: :production
# gem 'heroku-request-id'
gem 'dotenv-rails',       group: [:development,  :test]
gem 'dotenv-deployment',  group: [:development,  :test]

gem 'russian'
gem 'rails_admin-i18n'
gem 'rails-i18n'

# infrastructure
# gem "resque", "~> 2.0.0.pre.1", github: "resque/resque"
gem 'sinatra', require: nil
# gem 'rack', '1.5.2' # older to make it compatible with sinatra for it to show some errors of sidekiq
gem 'sidekiq', require: 'sidekiq/web'
# gem 'sidetiq', require: 'sidetiq/web'
gem 'sidetiq', require: 'sidetiq/web', group: :production
gem 'rails_admin', '0.6.6'
gem 'ruby-ntlm', require: 'ntlm/smtp'
gem 'heroku-api'
gem 'rest-client'
gem "non-stupid-digest-assets"
# gem 'route_downcaser'
gem 'git-version' # engine to display current commit hash
gem 'pg'
gem 'hashie', '>3.0.0'
gem 'database_cleaner'
gem 'devise'
gem 'fog'
# gem 'fog-aws'
gem 'carrierwave'
gem 'mini_magick'
gem 'selenium-webdriver'
gem 'dalli'
gem 'redis-cache'
gem 'sucker_punch'
gem 'poltergeist', require: 'capybara/poltergeist'
gem 'airbrake-api'
gem 'capybara'
gem 'net-ldap'
gem 'metainspector'

# Alerts & monitoring
gem 'airbrake', group: [:production]
# gem 'newrelic_rpm'

# models
gem 'faker'
gem 'jbuilder', '~> 2.0' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jpbuilder' # for autoadding callbacks to the above
# gem 'bcrypt-ruby', '~> 3.1.2' # Use ActiveModel has_secure_password
gem 'draper'
#gem 'squeel', git: 'https://github.com/activerecord-hackery/squeel' # ain't working
#gem 'time_zone_ext', git: 'https://github.com/mhchen/time_zone_ext.git', branch: 'dst_support'
#gem 'rails_admin'
#gem 'rails_admin_nestable' , git: 'https://github.com/dalpo/rails_admin_nestable.git'
gem 'deep_cloneable', '~> 2.0.0'
gem 'factory_girl_rails'
gem 'whiny_validation'
gem 'friendly_id'
gem 'enumerize'
gem 'paper_trail'
gem 'migration_data'

# css
gem 'sass-rails', '~> 5.0' # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # Use Uglifier as compressor for JavaScript assets
gem 'compass-rails'
gem 'chosen-rails'
gem 'pie-rails'
gem 'nicescroll-rails'
gem 'font-awesome-sass'
gem 'semantic-ui-sass'
# gem 'normailze-rails'

# js
gem 'sprockets-coffee-react'
# gem 'coffee-rails', '~> 4.1.0' # Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.0.0' # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails' # Use jquery as the JavaScript library
gem 'jquery-ui-rails'
#gem 'xdan-datepicker', git: 'bootstrap-datepicker-rails'
gem 'alertify-rails'
gem 'select2-rails'


# html

gem 'react-rails', '~> 1.0.0.pre', git: 'https://github.com/reactjs/react-rails'
gem 'js-model-rails'

gem 'turbolinks' # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
#gem 'wiselinks'
gem 'slim-rails'
#gem 'arbre2'    # ain't working
gem 'markdown-rails'
gem 'kaminari'
gem 'simple_form'
gem 'sanitize'

gem 'queryable_array'
gem 'hashdiff'


gem 'pry'
gem 'pry-rails'
gem 'pry-doc'
# gem 'pry-bloodline' # colorize prompt, but POWERFULLY SLOWS THE OUTPUT
gem 'table_print'
gem 'awesome_print'
group :development, :test do

  gem 'byebug' # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # gem 'web-console', '~> 2.0' # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring-commands-rspec", require: false
  # gem 'elasticsearch-node'  # entire elasticsearch server. type $ install_elasticsearch
  gem 'active_record_query_trace'
  gem 'rspec-rails'
  gem 'pry-rescue'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'
  gem 'pry-power_assert' # try "pa expression == expr2"
  gem 'pry-git'
  # gem 'pry-syntax-hacks' # BREAKS some regular expressions like /...@foo.com/
  gem 'pry-vterm_aliases' # shell aliases work
  # gem 'pry-highlight' # type >> when your last evaluated result _ is JSON XML etc in a string
  gem 'pry-pretty-numeric'
  # gem 'bond' # doesn't autocomplete rails models for me + too much magic

  gem 'timecop' # for time machine feature for BUPs


  #gem 'quiet_assets'
  gem 'launchy'

  gem 'meta_request' # use with rails_panel, can be buggy with rack extensions
  gem "anbt-sql-formatter", "~> 0.0.2", require: "anbt-sql-formatter/formatter"

  gem 'nokogiri'

end

group :development do
  # gem 'rails_real_favicon'
  gem 'quiet_assets'
  gem 'ctags-bundler'
  gem 'rack-livereload'

  gem 'guard-livereload',  require: false
  gem 'guard-rspec',       require: false
  gem 'guard-bundler'
  gem 'better_errors'
  #gem 'binding_of_caller'

  #gem 'rails-erd' # for generating diagrams, requires graphviz
  gem 'phantomjs', require: 'phantomjs/poltergeist'
end

group :test do
  gem 'simplecov',         require: false
  gem 'shoulda-matchers',  require: false
  gem 'syntax'
end

gem 'sdoc', '~> 0.4.0', group: :doc # bundle exec rake doc:rails generates the API under doc/api.
