class ntp::config {
   file { '/etc/ntp.conf':
   ensure  => present,
   owner   => 'root',
   group   => 'root',
   mode    => '644',
   source  => templates('ntp/templates/ntp.erb'),
   require => Class[ntp::install],
   notify  => Class[ntp::service]
  }
 }
