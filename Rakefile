# encoding:utf-8

#################################
# install rmagick for Windows
#################################

# keywords of path to ImageMagick
reg_path = /.*ImageMagick-\d+\.\d+\.\d+-*/i

app_path = ""
gem_options = ""


task :default => :install_rmagick


desc 'get install path'
task :get_path do
  path = ""
  ENV['path'].split(/;/).each do |x|
    if reg_path =~ x
      path = x
      puts ":found install path\n => #{path}"
      break
    end
  end
  
  if path == ""
    puts "app PATH not exist"
    exit
  end
  app_path = path
end


desc 'set gem options'
task :gem_options => [:get_path] do
  opt_dir     = %Q[--with-opt-dir="#{app_path}"]
  opt_lib     = %Q[--with-opt-lib="#{app_path}\\lib"]
  opt_include = %Q[--with-opt-include="#{app_path}\\include"]
  gem_options = %Q[--platform=ruby -- #{opt_dir} #{opt_lib} #{opt_include}]
end


desc 'install rmagick'
task :install_rmagick => [:gem_options] do
  sh "gem install rmagick #{gem_options}"
  #puts "gem install rmagick #{gem_options}"
end
