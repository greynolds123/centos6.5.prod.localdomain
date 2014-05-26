class nginx::ssl {
    file {'/etc/pki/tls/certs':
     ensure  => present,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> master/master
     user    => 'root';
     owner   => 'root';        
     mode    => 755,
     source  => template('nginx/ssl:erb');
=======
<<<<<<< HEAD
=======
>>>>>>> master/production
=======
>>>>>>> master/master
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => template('nginx/ssl:erb'),
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
=======
>>>>>>> master/production
=======
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
>>>>>>> master/master
     require => Class['nginx::service'],
      }
     }
