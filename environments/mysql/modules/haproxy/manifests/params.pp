# == Class haproxy::params
#
class haproxy::params {
  # Stats
  $stats_auth_enable    = true
  $stats_auth_pass      = 'undef'
  $stats_auth_user      = 'undef'
  $stats_enable         = true
  $stats_listen_address = 'undef'
  $stats_listen_port    = '8000'
  $stats_realm          = 'HAProxy'
  $stats_url            = '/haproxy'

  # Global
  $global_chroot       = undef
  $global_daemon       = true
  $global_debug        = false
  $global_log          = [ '/dev/log local0', '/dev/log local1 notice' ]
  $global_maxconn      = '4000'
  $global_nbproc       = $::processorcount
  $global_quiet        = false
  $global_stats_socket = '/var/run/haproxy.sock mode 660 level admin'
  $global_ulimit       = '81000'

  # Defaults
  $defaults_log        = [ 'global' ]
  $defaults_retries    = '3'
  $defaults_maxconn    = '5000'
  $defaults_contimeout = '4000'
  $defaults_clitimeout = '42000'
  $defaults_srvtimeout = '43000'
  $defaults_option     = [
    'httplog',
    'redispatch',
    'dontlognull'
  ]

  case $::osfamily {
    'RedHat': {
      $config_dir         = '/etc/haproxy/'
      $config_dir_mode    = '0755'
      $config_dir_recurse = true
      $config_group       = 'root'
      $config_mode        = '0644'
      $config_purge       = false
      $config_user        = 'root'
      $daemon_group       = 'root'
      $daemon_user        = 'root'
      $log_dir            = '/var/log/haproxy'
      $pkg_deps           = undef
      $pkg_ensure         = 'present'
      $pkg_list           = 'haproxy'
      $service_dep        = undef
      $service_enable     = true
      $service_ensure     = 'running'
      $service_hasrestart = true
      $service_hasstatus  = true
      $service_name       = 'haproxy'
    }

    default: {
      fail "Operating system ${::operatingsystem} is not supported yet."
    }
  }
}

