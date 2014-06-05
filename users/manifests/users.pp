class users::users {
      user { 'greynolds':
      ensure      => present,
      managehome  => true,
      }
      
    
      user { 'fds':
      ensure      => present,
      managehome  => true,
      }
   
      user { 'greynolds123':
      ensure     => present,
      managehome => true,
      }
    
      
      user { 'sam':
      ensure     => present,
      managehome => true,
      }

      user { 'mike':
      ensure     => present,
      managehome => true,
      }

      user { 'jill':
      ensure     => present,
      managehome => true,
      }

      user { 'Anne':
      ensure     => present,
      managehome => true,
      }
      
      user { 'Bob':
      ensure     => present,
      managehome => true,
      }

      user { 'Bill':
      ensure     => present,
      managehome => true,
      }

      user { 'Jane':
      ensure     => present,
      managehome => true,
      }
}
