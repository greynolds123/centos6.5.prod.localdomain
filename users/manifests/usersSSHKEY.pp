class users::userSSHKEY {
      file  {'$HOME/.ssh/id_rsa.pub':
<<<<<<< HEAD
      ensure   => present,
      type     => $sshfp_rsa,
      key      => $sshrsakey,
      mode     => 0775,
      require  => Class['users::config'], 
      require  => Class['users::users'],
      require  => Class['users::install'],
=======
      ensure  => present,
      type    => $sshfp_rsa,
      key     => $sshrsakey,
      mode    => '0775',
      require => Class['users::config'],
      require => Class['users::users'],
      require => Class['users::install'],
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
       }
      }
     
     if $ensure == 'present' {
        file {'/HOME/.ssh/id_rsq':
        password_hash => md5($password),
        provider      => 'sshkeygen',
<<<<<<< HEAD
        user          => "$HOME",
=======
        user          => $HOME,
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
        require       => Class['ssh::server'],
       }
      }
