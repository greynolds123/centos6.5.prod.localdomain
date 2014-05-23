class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
      }
     }
