class users::users {
    user { 'greynolds':
      ensure      => present,
      group       => greynolds,
      owner       => greynolds,
      mode        => '0770',
      managehome  => true,
      require     => Class['users::config'],
      }
    
    user { 'fds':
      ensure      => present,
      owner       => fds,
      group       => fds,
      mode        => '0770',
      managehome  => true
    }
    
    user { 'greynolds123':
       ensure     => present,
       owner      => greynolds123,
       group      => greynolds123,
       mode       => '0770',
       managehome => true
    }
 }
