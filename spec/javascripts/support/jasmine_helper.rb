# Use this file to set/override Jasmine configuration options
# You can remove it if you don't need it.
# This file is loaded *after* jasmine.yml is interpreted.
#
# Example: using a different boot file.
# Jasmine.configure do |config|
#    config.boot_dir = '/absolute/path/to/boot_dir'
#    config.boot_files = lambda { ['/absolute/path/to/boot_dir/file.js'] }
# end
#
require_relative './jasmine_selenium_configurer'

# Prevent PhantomJS auto install, as we're using selenium headless chrome
Jasmine.configure do |config|
  config.prevent_phantom_js_auto_install = true
end
