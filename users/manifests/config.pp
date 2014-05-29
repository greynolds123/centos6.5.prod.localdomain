class users::config {
     file { "/home":
     ensure  => "directory",
      }
     }


     exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
     }  
   
    

     file { "/root/produsers.sh":
     ensure   => "present",
     owner    => "root",
     group    => "root",
     mode     => 0755,
     source  => 'file:///modules/users/produsers.sh',
     }



 
     exec {"copy_produsers":
     command  => "/bin/cp ../files/produsers.sh /root/",
     path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
     onlyif   => "grep -c /root/ /root/produsers.sh && exit 1 || exit 0"
     }

     exec { "produsers":
     command  => "/bin/sh /root/produsers.sh",
     path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
     onlyif   => "grep -c /root/ /root/produsers.sh && exit 1 || exit 0"
     }
