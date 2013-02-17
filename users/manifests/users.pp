class users::users {
    user { 'greynolds':
      ensure      => present,
      managehome  => true,
      require     => Class['users::config']
      }
    }
    
    user { 'fds':
      ensure      => present,
      managehome  => true,
    }
