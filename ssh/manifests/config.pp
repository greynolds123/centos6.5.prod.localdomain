class ssh::config {
   file { '/etc/ssh/ssh_config':
    enable  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'file:///modules/ssh/ssh_config',
    require => Class['ssh::install'],
    notify  => Class['ssh::service']
    }
  }
