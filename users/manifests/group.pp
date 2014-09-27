class users::group {
<<<<<<< HEAD
     file { "/etc/group":
=======
     file { '/etc/group':
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
     ensure  => present,
     require => Class['users::users']
      }
     }
