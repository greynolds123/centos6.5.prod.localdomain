class users::userSSHKEY {
      file  {'$HOME/.ssh/id_rsa.pub':
      ensure   => present,
      type     => $sshfp_rsa,
      key      => $sshrsakey,
      mode     => 0775,
      require  => Class['users::config'], 
      require  => Class['users::users'],
      require  => Class['users::install'],
       }
      }
     
     if $ensure == 'present' {
        file {'/HOME/.ssh/id_rsq':
        password_hash => md5($password),
        provider      => 'sshkeygen',
        user          => "$HOME",
        require       => Class['ssh::server'],
       }
      }
