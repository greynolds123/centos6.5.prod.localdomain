class nginx::service {
        service { 'nginx':
        ensure     => present,
<<<<<<< HEAD
<<<<<<< HEAD
        hasstatus  => true;
        hasrestart => true;
        enable     => true;
        source     => template(nginx/key.erb);
=======
=======
>>>>>>> master/production
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => template('nginx/key.erb'),
<<<<<<< HEAD
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
=======
>>>>>>> master/production
        require    => Class['nginx::config'],
         }
        }
