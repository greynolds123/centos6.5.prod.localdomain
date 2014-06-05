class users::config {
     file { "/home":
     ensure  => "directory",
      }
     }

<<<<<<< HEAD
     file { "/root/produsers.sh":
     ensure   => "file",
     source  => 'file:///modules/users/produsers.sh',
     }
=======
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc

     exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
<<<<<<< HEAD
     }  
   
     exec { "produsers":
     command  => "sh /root/produsers.sh",
     path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
=======
     }   

      file {'/root/prodAddusers.txt':
      ensure  => present,
      source  => 'puppet:///modules/users/prodAddusers.txt',
      }


      file {'/root/produsers.sh':,
      ensure  => present,
      source  => 'puppet:///modules/users/produsers.sh',
      }


      exec { "produser":
      command  => "/bin/sh /root/produsers.sh",
      path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
      onlyif   => "grep -c /root/ /root/produsers.sh && exit 1 || exit 0"
      }

>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
