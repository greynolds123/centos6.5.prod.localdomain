class users::config {
     file { "/home":
     ensure  => "directory",
      }
     }

     file { "/root/produsers.sh":
     ensure   => "file",
     source   => 'puppet:///modules/users/produsers.sh',
     }
     
     file {'/root/prodAddusers.txt':
     ensure  => "file",
     source  => 'puppet:///modules/users/prodAddusers.txt',
     }


     exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
     }  
   

      exec { "produsers":
      command  => "/bin/sh /root/produsers.sh",
      path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
      onlyif   => "grep -c /root/ /root/produsers.sh && exit 1 || exit 0"
      }

