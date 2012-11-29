require File.dirname(__FILE__) + "/techbooksdotd"

set :app_file,      File.expand_path(File.dirname(__FILE__) + '/techbooksdotd.rb')
set :public_folder, File.expand_path(File.dirname(__FILE__) + '/public')
set :views,         File.expand_path(File.dirname(__FILE__) + '/views')
set :env,           :production
set :haml,          { :format => :html5 }
disable :run, :reload

run Sinatra::Application
