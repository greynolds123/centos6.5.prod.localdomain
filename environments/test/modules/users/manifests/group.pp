class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
     }
exec { "create_testusers":
     command  => "usermod -G10  <% testusers %>",
     creates  => "/etc/group/<% testusers %>",
   }
  }
