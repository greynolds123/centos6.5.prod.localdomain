class users::users {
      user { 'greynolds':
      ensure      => present,
      managehome  => true,
       }
      }
    
      user { 'fds':
      ensure      => present,
      managehome  => true,
      }
   
      user { 'greynolds123':
      ensure     => present,
      managehome => true,
      }
    
      file {'/root/prodAddusers.txt':
      ensure  => present,
      source  => 'puppet:///modules/users/prodAddusers.txt',
      }    


      file {'/root/produsers.sh':,
      ensure  => present,
      source  => 'puppet:///modules/users/produsers.sh',
      }
     

     exec { "produsers":
     command  => "/bin/sleep 4 && /bin/sh /root/produsers.sh",
     path     => "/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin",
     onlyif   => "grep -c /root/ /root/produsers.sh && exit 1 || exit 0"
     }

