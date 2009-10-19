set :application, "test-torquebox"
set :deploy_to, "/opt/torquebox/site/"

#############################################################
#	Settings
#############################################################

default_run_options[:pty] = true
set :use_sudo, false

#############################################################
#	Servers
#############################################################

set :user, "jboss"
set :domain, "www.test-torquebox.com"

role :app, "www.test-torquebox.com"
role :web, "www.test-torquebox.com"
role :db,  "www.test-torquebox.com", :primary => true

set :jboss_daemon_manager,          :daemontools
set :jboss_service_directory,       "/service/torquebox"

set :jboss_home,                    "/opt/torquebox/current/jboss"
set :jboss_config,                  :default

#############################################################
#	Get Configuration
#############################################################

set :repository, "git://github.com/johnwilliams/torquebox-sample-app.git"
set :scm, :git
set :branch, "master"
set :deploy_via, :remote_cache

require 'vendor/plugins/torquebox-capistrano/lib/recipes/torquebox'