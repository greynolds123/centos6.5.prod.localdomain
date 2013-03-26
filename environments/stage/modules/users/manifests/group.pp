class users::group {
     file { "/etc/group":
     ensure  => present,
     require => Class['users::config']
     }
exec { "create_stageusers":
     command  => "usermod -G10  <% stageusers %>",
     creates  => "/etc/group/<% stageusers %>",
   }
  }
