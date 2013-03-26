class users::config {
     file { "/home":
     ensure  => "directory",
   }
 }

exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
   }  
   
exec { "qausers":
     command  => "sh /root/myscripts/6-remote/qausers.sh",
     path     => "/bin:/usr/bin:/sbin:/usr/sbin"
   } 
