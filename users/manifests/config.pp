class users::config {
     file { "/home":
     ensure  => "directory",
      }
     }

     exec { "create_home":
     command  => "/bin/mkdir  /home",
     creates  => "/home",
     } 
     
      file {'/root/prodAddusers.txt':
      ensure => present,
      source => 'puppet:///modules/users/prodAddusers.txt',
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


