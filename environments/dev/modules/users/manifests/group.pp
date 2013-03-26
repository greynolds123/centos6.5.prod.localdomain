class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
     }
exec { "create_devusers":
     command  => "usermod -G10  <% devusers %>",
     creates  => "/etc/group/<% devusers %>",
   }
  }
