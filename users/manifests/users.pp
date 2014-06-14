class users::users {
      user { 'greynolds':
      ensure      => present,
      managehome  => true,
      password    => '$1$r.HavEjN$w5hFRD61Jm/WcfSVFTOo61',
      require     => Class['users::config'],
<<<<<<< HEAD
<<<<<<< HEAD
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
=======
      }
=======
      }      
>>>>>>> 2a53bc50fddb982f1597fa3487bea50daaecdda8
   
      user { 'fds':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }      
   
      user { 'greynolds123':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }   
      
      user { 'sam':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }

      user { 'mike':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }
      
      user { 'jill':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }
 
      user { 'Anne':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }
         
      user { 'Bob':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }

      user { 'Bill':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }

      user { 'Jane':
      ensure      => present,
      managehome  => true,
      password    => '$1$WRo1jSTE$V63lyDgSj8N7WaVQ4YJfO/',
      require     => Class['users::config'],
       }
      }  

<<<<<<< HEAD
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
=======
      if $user == user { 
          exec { 'change_password':
           command   => '/usr/bin/chage -d 0 $HOME/$user',
             onlyif  => "/bin/grep -c $HOME  $HOME/$user && exit 1 || exit 0",
      }
     }
>>>>>>> 2a53bc50fddb982f1597fa3487bea50daaecdda8
