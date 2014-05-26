class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
     }
exec { "create_produsers":
     command  => "usermod -G10  <% produsers %>",
     creates  => "/etc/group/<% produsers %>",
   }
  }
