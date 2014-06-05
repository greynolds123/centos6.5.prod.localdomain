class users::config {
     file { "/home":
     ensure  => "directory",
      }
     }


     exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
     }   
