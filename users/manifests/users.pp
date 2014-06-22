class users::users {
      user { 'greynolds':
      ensure      => present,
      managehome  => true,
<<<<<<< HEAD
       }
      }

      user { 'greynolds123':
      ensure     => present,
      managehome => true,
      password   => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require    => Class["users::config"],
      }
=======
      require     => Class['users::config'],
       }
>>>>>>> 6f3e1cafb3745b00a29bcd5d6a0bc316eb7e9d5f
   
      user { 'fds':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
<<<<<<< HEAD
      require     => Class["users::config"],
      }      
    
=======
      require     => Class['users::config'],
       }
      
   
      user { 'greynolds123':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class['users::config'],
      }   
      
>>>>>>> 6f3e1cafb3745b00a29bcd5d6a0bc316eb7e9d5f
      user { 'sam':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class["users::config"],
      }

      user { 'mike':
      ensure      => present,
      managehome  => true,
      password    => '$1$nnCRygYZ$/qQeASIdxplrU3h11493J0',
      require     => Class["users::config"],
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
<<<<<<< HEAD
       }  
=======
       }
      }
>>>>>>> 6f3e1cafb3745b00a29bcd5d6a0bc316eb7e9d5f

      if $user == user { 
          exec { 'change_password':
           command   => '/usr/bin/chage -d 0 $HOME/$user',
             onlyif  => "/bin/grep -c $HOME  $HOME/$user && exit 1 || exit 0",
      }
     }
