class role::app_server {
  include profile::web
  include profile::base
  include profile::ssh_server
  include profile::app
}
