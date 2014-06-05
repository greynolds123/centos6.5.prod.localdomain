class users::users {
      user { 'greynolds':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
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
   
      user { 'fds':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }      
   
      user { 'greynolds123':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }   
      
      user { 'sam':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }

      user { 'mike':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }
      
      user { 'jill':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }
 
      user { 'Anne':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }
         
      user { 'Bob':
      ensure     => present,
      managehome => true,
      require    => Class['users::config'],
      }

      user { 'Bill':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
      }

      user { 'Jane':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
       }
      }

>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
