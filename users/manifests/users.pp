class users::users {
      user { 'greynolds':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config'],
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

