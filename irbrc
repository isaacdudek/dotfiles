IRB.conf[:PROMPT_MODE] = :SIMPLE

begin
  require 'wirb'

  Wirb.start
rescue LoadError => e
  puts "Couldn't load Wirb: #{e}"
end

begin
  require 'hirb'

  extend Hirb::Console
  Hirb.enable pager: false
rescue LoadError => e
  puts "Couldn't load Hirb: #{e}"
end

ActiveRecord::Base.logger = Logger.new(STDOUT) if defined?(Rails)
