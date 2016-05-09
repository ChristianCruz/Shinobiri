
source 'https://rubygems.org'


###############################################
##
## CUSTOM DEPENDENCIEs
##
###############################################

# Materialize for front-end development and styles
gem 'materialize-sass'

# Devise for authentication
gem 'devise'

# Figaro, an elegant solution for handling sensitive data with environment variables.
gem 'figaro', '1.0'


###############################################
##
## DEFAULT GEMS
##
###############################################

gem 'rails', '4.2.5'

# Use sqlite3 as the database for Active Record
group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'web-console', '~> 2.0'

  gem 'spring'
end

