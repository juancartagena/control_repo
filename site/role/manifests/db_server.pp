class role::db_server {
  include profile::base
  include profile::ssh_server
  include profile::db
}
