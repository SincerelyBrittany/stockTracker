ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'
require 'sinatra/activerecord'


desc "Start console"
task :console do
  Pry.start
end
