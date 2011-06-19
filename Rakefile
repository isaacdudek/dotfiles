require 'erb'

namespace :dotfiles do
  task :install do
    Dir.glob('*').each do |filename|
      next if filename == 'Rakefile'

      current_file = File.join(ENV['HOME'], ".#{File.basename filename, '.erb'}")
      new_file = File.join(File.dirname(__FILE__), filename)

      if File.exists?(current_file) || File.symlink?(current_file)
        if File.identical? current_file, new_file
          puts "identical #{current_file}"
        else
          puts "rename #{current_file} => #{current_file}.backup"
          File.rename current_file, "#{current_file}.backup"
          symlink_file current_file, new_file
        end
      else
        symlink_file current_file, new_file
      end
    end
  end
end

def symlink_file(current_file, new_file)
  if new_file.end_with? '.erb'
    puts "write #{current_file}"
    File.open(current_file, 'w') {|file| file.write ERB.new(File.read(new_file)).result(binding)}
  else
    puts "symlink #{current_file}"
    File.symlink new_file, current_file
  end
end
