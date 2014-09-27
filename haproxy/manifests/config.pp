# == Class haproxy::config
#
class haproxy::config {
  File {
    require  => Class['::haproxy::install'],
    notify  => Service[$::haproxy::service_name],
    owner   => $::haproxy::config_user,
    group   => $::haproxy::config_group,
    mode    => $::haproxy::config_file_mode,
  }

  file {
    $::haproxy::config_dir:
      ensure  => directory,
      mode    => $::haproxy::config_dir_mode,
      purge   => $::haproxy::config_purge,
      recurse => $::haproxy::config_dir_recurse;

    $::haproxy::log_dir:
      ensure => directory,
      owner  => $::haproxy::daemon_user,
      group  => $::haproxy::daemon_group;
  }

  if $::haproxy::default_file {
    $service_enable = $::haproxy::service_enable

    file { $::haproxy::default_file:
      ensure  => present,
      content => template('haproxy/default_file.erb'),
    }
  }

  if $::haproxy::global_chroot {
    if ! is_string($::haproxy::global_chroot) {
      fail 'Wrong value for \$global_chroot. Should be a directory.'
    }

    validate_absolute_path($::haproxy::global_chroot)

    file { $::haproxy::global_chroot:
      ensure => directory,
      owner  => $::haproxy::daemon_user,
      group  => $::haproxy::daemon_group,
    }
  }

  concat { "${::haproxy::config_dir}/haproxy.cfg":
    owner => $::haproxy::config_user,
    group => $::haproxy::config_group,
    mode  => $::haproxy::config_file_mode,
  }

  concat::fragment { 'haproxy.cfg_header':
    target  => "${::haproxy::config_dir}/haproxy.cfg",
    content => "# Managed by Puppet\n",
    order   => 01,
  }

  concat::fragment { 'haproxy.cfg_global':
    target  => "${::haproxy::config_dir}/haproxy.cfg",
    content => template('haproxy/config_global.erb'),
    order   => 02,
  }

  concat::fragment { 'haproxy.cfg_defaults':
    target  => "${::haproxy::config_dir}/haproxy.cfg",
    content => template('haproxy/config_defaults.erb'),
    order   => 03,
  }

  if $::haproxy::stats_enable {
    concat::fragment { 'haproxy.cfg_stats':
      target  => "${::haproxy::config_dir}/haproxy.cfg",
      content => template('haproxy/config_stats.erb'),
      order   => 04,
    }
  }
}
   
   augeas { 'sysctl_changes':
    context  => '/files/etc/sysctl.conf',
     changes => [
      'set net.core.somaxconn 16384',
      'set net.core.rmem_max  16777216',
      'set net.core.wmem_max  16777216',
      'set net.ipv4.tcp_rmem "4096 87380 16777216"',
      'set net.ipv4.tcp_wmem "4096 65536 16777216"',
      'set net.ipv4.tcp_syncookies 1',
      'set net.ipv4.tcp_mem 50576 64768 98152',
      'set net.core.netdev_max_backlog 2500',
      'set net.ipv4.ip_forward 1',
      ],
    }
   
   notify {'Check sysconfig content': }

    exec { 'haproxy_install':
     command => '/bin/yum install haproxy -y',
     path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin',
     before  => Exec['restarting_rsyslog'],
     }


    file { '/var/log/haproxy':
     ensure  => 'directory',
    }

 
     file { '/etc/rsyslog.conf':
      ensure  => present,
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
      content => template('haproxy/rsyslog.erb'),
      }
    

     augeas { 'rsyslog_entry':
      context  => '/files/etc/rsyslog.conf',
       changes => [
          'set entry[last()+1]/selector/facility local2',
          'set entry[last()]/selector/level *',
          "set entry[last()]/action/file '/var/log/haproxy/haproxy.log'",
          ],
     }


     notify {'You will have to restart rsyslog': }
      

     exec { 'restarting_rsyslog':
      command => '/sbin/service rsyslog restart',
      path    => '/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin',
      onlyif  => 'grep -c /etc/ /etc/rsyslog && exit 1 || exit 0',
      }
