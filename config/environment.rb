# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.stmp_setting = {
	:address => 'stmp.sendgrid.net',
	:port => '587',
	:authentification => :plain,
	:user_name => ENV['SNEDGRID_USERNAME'],
	:password => ENV['SENDGRID_PASSWORD'],
	:domain => 'heroku.com',
	:enable_startstls_auto => true
}
