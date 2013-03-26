class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
     }
exec { "create_mysqlusers":
     command  => "usermod -G10  <% mysqlusers %>",
     creates  => "/etc/group/<% mysqlusers %>",
   }
  }
