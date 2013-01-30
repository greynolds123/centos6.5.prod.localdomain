class ssh::config {
   file { '/etc/ssh/ssh_config':
    enable  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    source  => 'templates('ssh/templates/ssh.erb'),
    require => Class['ssh::install'],
    notify  => Class['ssh::service']
    }
  }
