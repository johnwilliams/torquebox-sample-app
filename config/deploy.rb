set :application, "test-torquebox2"
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
set :domain, "www.test-torquebox2.com"

role :app, "www.test-torquebox2.com"
role :web, "www.test-torquebox2.com"
role :db,  "www.test-torquebox2.com", :primary => true

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

require 'recipes/torquebox'