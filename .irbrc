require 'irb/completion'
require 'rubygems'
gem 'wirble'
require 'wirble'
# Log to STDOUT if in Rails
if ENV.include?('RAILS_ENV') && !Object.const_defined?('RAILS_DEFAULT_LOGGER')
	require 'logger'
	RAILS_DEFAULT_LOGGER = Logger.new(STDOUT)
end
Wirble.init
Wirble.colorize
ActiveRecord::Base.logger = Logger.new(STDOUT) if defined? Rails::Console
