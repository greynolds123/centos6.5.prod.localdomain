class users::users {
    user { 'greynolds':
      ensure      => present,
      owner       => greynolds,
      group       => greynolds,
      mode        => '0775',
      managehome  => true,
      require     => Class['users::config']
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
