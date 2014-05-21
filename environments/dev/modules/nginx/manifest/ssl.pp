class nginx::ssl {
    file {'/etc/pki/tls/certs':
     ensure  => present,
     user    => 'root',
     owner   => 'root',        
     mode    => 0755,
     source  => 'centos6.5.prod.localdomain:///nginx/ssl.erb',
     #source  => template('nginx/ssl:erb'),
     require => Class['nginx::service'],
      }
     }
