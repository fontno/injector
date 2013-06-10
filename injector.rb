gem 'devise'
gem 'debugger'

gem group :development do
  gem 'thin'
  gem 'pry-rails'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

gem group :test do
  gem 'capybara'
  gem 'fuubar'
  gem 'factory_girl_rails'
  gem 'shoulda-matchers'
end

gem group :development, :test do
  gem 'rspec-rails'
  gem 'launchy'
end

append_to_file '.gitignore' do
  '/log/*.log'
  '/tmp'
  'config/database.yaml'
end

git :init
git add: '.'
git commit: '-m Initial commit'
