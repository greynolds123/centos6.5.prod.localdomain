class nginx::service {
        service { 'nginx':
        ensure     => present,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> master/master
        hasstatus  => true;
        hasrestart => true;
        enable     => true;
        source     => template(nginx/key.erb);
=======
<<<<<<< HEAD
=======
>>>>>>> master/production
=======
>>>>>>> master/master
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        source     => template('nginx/key.erb'),
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
=======
>>>>>>> master/production
=======
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
>>>>>>> master/master
        require    => Class['nginx::config'],
         }
        }
