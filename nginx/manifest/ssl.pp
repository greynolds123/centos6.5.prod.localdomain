class nginx::ssl {
    file {'/etc/pki/tls/certs':
     ensure  => present,
<<<<<<< HEAD
     user    => 'root';
     owner   => 'root';        
     mode    => 755,
     source  => template('nginx/ssl:erb');
=======
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => template('nginx/ssl:erb'),
>>>>>>> 6a709305df8f552600a0a710abce3da33d2d5281
     require => Class['nginx::service'],
      }
     }
