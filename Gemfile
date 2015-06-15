source 'https://rubygems.org'

ruby "2.0.0"

gem 'rails', '4.1'

group :development, :production do
  gem 'pg', '0.15.1'
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
end

gem 'sass-rails', '~> 4.0.0'
gem 'slim'
gem 'haml'
gem 'anjlab-bootstrap-rails', '~> 3.0.0.3', :require => 'bootstrap-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem 'sdoc', '~> 0.4.0', group: :doc

gem 'devise'
gem 'activeadmin', github: 'gregbell/active_admin'
gem 'tzinfo-data'


group :test do
  gem 'sqlite3', '1.3.6'
end

group :development do
  gem 'spring'
  gem 'thin'
  gem 'quiet_assets'
  gem 'letter_opener'
  gem 'binding_of_caller'
  gem 'pry-rails'
end
