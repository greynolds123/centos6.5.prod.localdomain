class bind::config {
    file { '/etc/named.conf':
    owner   => root,
    group   => root,
    mode    => '0444',
    ensble  => true,
    souce   => templates('bind/templates/name.erb/'),
    require => Class['bind::install'],
    notify  => Class['bind::service']
    }
  }
