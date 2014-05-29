class webserver::nginx::install {
    package {'nginx':
    ensure => present,
     }
    }
