class users::config {
     file { "/home":
     ensure  => "directory",
      }
     }

     file { "/root/produsers.sh":
     ensure   => "file",
     owner    => "root",
     group    => "root",
     mode     => 0755,
     source  => 'file:///modules/users/produsers.sh',
     }

     exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
     }  
   
     exec { "produsers":
     command  => "sh /root/produsers.sh",
     path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
