class nginx::service {
        service { 'nginx':
        ensure     => present,
<<<<<<< HEAD
        hasstatus  => true;
        hasrestart => true;
        enable     => true;
        source     => template(nginx/key.erb);
=======
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => template('nginx/key.erb'),
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
        require    => Class['nginx::config'],
         }
        }
