class users::config {
     file { "/home":
     ensure  => "directory",
   }
 }

exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
   }  
   
exec { "produsers":
     command  => "sh /root/myscripts/remote/produsers.sh",
     path     => "/bin:/usr/bin:/sbin:/usr/sbin"
   } 
