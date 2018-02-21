RUBY CHECKLIST!!!


rails g controller <controller_name>
# So you don't get weird Method 'nil' errors related to server instance
# in config/environments/development.rb:
	 config.reload_classes_only_on_change = false

# Install footnotes
rails g rails_footnotes:install

>>Rails command<<
rails new assignment -T 

>>Gemfile<<
gem 'rspec-rails' -------> IN development do
bundle install
rails g rspec: install
