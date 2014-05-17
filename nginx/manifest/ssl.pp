class nginx::ssl {
    file {'/etc/pki/tls/certs':
     ensure  => present,
     user    => 'root';
     owner   => 'root';        
     mode    => 755,
     source  => template('nginx/ssl:erb');
     require => Class['nginx::service'],
      }
     }
