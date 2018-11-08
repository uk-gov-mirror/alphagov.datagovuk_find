require 'jasmine_selenium_runner/configure_jasmine'

class JasmineSeleniumConfigurer < JasmineSeleniumRunner::ConfigureJasmine
  def selenium_options
    options = super
    case browser
    when /^firefox/
      options[:profile] ||= Selenium::WebDriver::Firefox::Profile.new
      options[:profile]['dom.max_chrome_script_run_time'] = 20
      options[:profile]['dom.max_script_run_time'] = 20
    when /^chrome/
      options[:desired_capabilities] = Selenium::WebDriver::Remote::Capabilities.chrome(
        chromeOptions: { args: %w(headless disable-gpu) }
      )
    end
    options
  end
end
