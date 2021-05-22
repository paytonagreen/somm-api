source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
gem 'puma', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'rack-cors'
gem 'bcrypt', '~> 3.1', '>= 3.1.16'
gem 'rails_same_site_cookie', '~> 0.1.8'
gem 'rack', '~> 2.2', '>= 2.2.3'
gem 'will_paginate', '~> 3.3'
gem 'actionmailer_inline_css'

group :production do
  gem 'pg', '~> 1.2', '>= 1.2.3'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'sqlite3', '~> 1.4'
  gem 'listen', '~> 3.3'
  gem 'spring'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
