source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'
gem 'rails', '~> 6.1.3'

gem 'aws-sdk-s3', '~> 1.14'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'figaro'
gem 'image_processing', '~> 1.2'
gem 'jbuilder', '~> 2.7'
gem 'mini_magick', '~> 4.11'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'shrine', '~> 3.3'
gem 'sqlite3', '~> 1.4'
gem 'streamio-ffmpeg'
gem 'turbolinks', '~> 5'
gem 'webpacker', '~> 5.0'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'spring'
  gem 'web-console', '>= 4.1.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
