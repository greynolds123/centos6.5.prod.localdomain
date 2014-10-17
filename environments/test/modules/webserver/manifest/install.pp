class webserver::nginx::install {
    package {'nginx':
    ensure  => true,
    enable  => true,
    require => Package['nginx'],
      }
     }
