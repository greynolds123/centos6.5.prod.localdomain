class users::users {
      user { 'greynolds':
<<<<<<< HEAD
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }      
   
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
=======
      ensure     => present,
      managehome => true,
      require    => Class['users::config'],
      }
   
      user { 'fds':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }
   
      user { 'greynolds123':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }
      
      user { 'sam':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }

      user { 'mike':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }
      
      user { 'jill':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }
 
      user { 'Anne':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
         
      user { 'Bob':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }

      user { 'Bill':
<<<<<<< HEAD
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }

      user { 'Jane':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
       }
      }  

      if $user == user { 
          exec { 'change_password':
           command   => '/usr/bin/chage -d 0 $HOME/$user',
             onlyif  => "/bin/grep -c $HOME  $HOME/$user && exit 1 || exit 0",
=======
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
      }

      user { 'Jane':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class['users::config'],
       }
      }

      if $user == user {
          exec { 'change_password':
           command  => '/usr/bin/chage -d 0 $HOME/$user',
             onlyif => "/bin/grep -c ${HOME}  ${HOME}/${user} && exit 1 || exit 0",
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      }
     }
