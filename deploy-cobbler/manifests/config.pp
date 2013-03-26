class deploy-cobbler::config {
    file  {'/etc/cobbler/':
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => template('deploy-cobbler/templates/settings.erb'),
    require => Class['deploy-cobbler::install'],
    notify  => Class['deploy-cobber::service'],
    }
  }
