require File.dirname(__FILE__) + "/../myapp"

set :app_file, File.expand_path(File.dirname(__FILE__) + '/../myapp.rb')
set :public,   File.expand_path(File.dirname(__FILE__) + '/../public')
set :views,    File.expand_path(File.dirname(__FILE__) + '/../views')
set :env,      :production
set :haml,     { :format => :html5 }
disable :run, :reload

run Sinatra::Application
