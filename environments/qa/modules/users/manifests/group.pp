class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
     }
exec { "create_qausers":
     command  => "usermod -G10  <% qausers %>",
     creates  => "/etc/group/<% qausers %>",
   }
  }
