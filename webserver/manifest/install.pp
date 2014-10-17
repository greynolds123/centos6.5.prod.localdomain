class webserver::nginx::install {
    package {'nginx':
<<<<<<< HEAD
    ensure => present,
     }
    }
=======
    ensure  => true,
    enable  => true,
    require => Package['nginx'],
      }
     }
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
