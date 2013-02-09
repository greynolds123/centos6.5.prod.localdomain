class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
     }
exec { "create_prodAddusers":
     command  => "usermod -G10  <% prodAddusers %>",
     creates  => "/etc/group/<% prodAddusers %>",
   }
  }
