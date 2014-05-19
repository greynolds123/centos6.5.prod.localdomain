class ntp::install {
    package { 'ntpd':
      ensure  => present,
    }
 }
