class users::group {
     file { "/etc/group":
     ensure  => present,
<<<<<<< HEAD
     require => Class['users::config']
=======
     require => Class['users::users']
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
      }
     }
