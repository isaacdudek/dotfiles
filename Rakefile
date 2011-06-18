namespace :dotfiles do
  task :install do
    Dir.glob('*').each do |filename|
      next if filename == 'Rakefile'

      current_file = File.join(ENV['HOME'], ".#{filename}")
      new_file = File.join(File.dirname(__FILE__), filename)

      if File.exists?(current_file) || File.symlink?(current_file)
        if File.identical? current_file, new_file
          puts "identical #{current_file}"
        else
          puts "rename #{current_file} => #{current_file}.backup"
          File.rename current_file, "#{current_file}.backup"
          puts "symlink #{current_file}"
          File.symlink new_file, current_file
        end
      else
        puts "symlink #{current_file}"
        File.symlink new_file, current_file
      end
    end
  end
end
