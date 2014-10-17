# == Class haproxy::params
#
class haproxy::params {
  # Stats
<<<<<<< HEAD
  $stats_auth_enable    = false
  $stats_auth_pass      = 'secret'
  $stats_auth_user      = 'haproxy'
  $stats_enable         = false
  $stats_listen_address = '127.0.0.1'
=======
  $stats_auth_enable    = true
  $stats_auth_pass      = 'undef'
  $stats_auth_user      = 'undef'
  $stats_enable         = true
  $stats_listen_address = 'undef'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
  $stats_listen_port    = '8000'
  $stats_realm          = 'HAProxy'
  $stats_url            = '/haproxy'

  # Global
  $global_chroot       = undef
  $global_daemon       = true
  $global_debug        = false
  $global_log          = [ '/dev/log local0', '/dev/log local1 notice' ]
<<<<<<< HEAD
  $global_maxconn      = '4096'
  $global_nbproc       = $::processorcount
  $global_quiet        = false
  $global_stats_socket = '/var/run/haproxy.sock mode 660 level admin'
  $global_ulimit       = '8192'
=======
  $global_maxconn      = '4000'
  $global_nbproc       = $::processorcount
  $global_quiet        = false
  $global_stats_socket = '/var/run/haproxy.sock mode 660 level admin'
  $global_ulimit       = '81000'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8

  # Defaults
  $defaults_log        = [ 'global' ]
  $defaults_retries    = '3'
<<<<<<< HEAD
  $defaults_maxconn    = '2000'
  $defaults_contimeout = '5000'
  $defaults_clitimeout = '50000'
  $defaults_srvtimeout = '50000'
=======
  $defaults_maxconn    = '5000'
  $defaults_contimeout = '4000'
  $defaults_clitimeout = '42000'
  $defaults_srvtimeout = '43000'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
  $defaults_option     = [
    'httplog',
    'redispatch',
    'dontlognull'
  ]

  case $::osfamily {
    'RedHat': {
<<<<<<< HEAD
      $config_dir         = '/etc/haproxy'
      $config_dir_mode    = '0755'
      $config_dir_recurse = false
=======
      $config_dir         = '/etc/haproxy/'
      $config_dir_mode    = '0755'
      $config_dir_recurse = true
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      $config_group       = 'root'
      $config_mode        = '0644'
      $config_purge       = false
      $config_user        = 'root'
<<<<<<< HEAD
      $daemon_group       = undef
      $daemon_user        = undef
      $log_dir            = undef
      $pkg_deps           = undef
      $pkg_ensure         = present
      $pkg_list           = undef
      $service_dep        = undef
      $service_enable     = true
      $service_ensure     = running
      $service_hasrestart = undef
      $service_hasstatus  = undef
      $service_name       = 'haproxy'
    }

    'Debian': {
      $config_dir         = '/etc/haproxy'
      $config_dir_mode    = '0755'
      $config_dir_recurse = false
      $config_file_mode   = '0644'
      $config_group       = 'root'
      $config_user        = 'root'
      $daemon_group       = 'haproxy'
      $daemon_user        = 'haproxy'
      $default_file       = '/etc/default/haproxy'
      $log_dir            = '/var/log/haproxy'
      $pkg_deps           = undef
      $pkg_ensure         = present
      $pkg_list           = 'haproxy'
      $service_dep        = undef
      $service_enable     = true
      $service_ensure     = running
=======
      $daemon_group       = 'root'
      $daemon_user        = 'root'
      $log_dir            = '/var/log/haproxy'
      $pkg_deps           = undef
      $pkg_ensure         = 'present'
      $pkg_list           = 'haproxy'
      $service_dep        = undef
      $service_enable     = true
      $service_ensure     = 'running'
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      $service_hasrestart = true
      $service_hasstatus  = true
      $service_name       = 'haproxy'
    }

    default: {
      fail "Operating system ${::operatingsystem} is not supported yet."
    }
  }
}

