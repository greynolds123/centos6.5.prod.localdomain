class nginx::ssl {
    file {'/etc/nginx/conf.d/ssl.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',        
     mode    => 0755,
     source  => 'file:///modules/nginx/ssl.conf',
     require => Class['nginx::service'],
      }
     }

     file {'/etc/pki/tls/certs/centos6.5.localdomain.pem':
      ensure  => present,
      owner   => "root",
      group   => "root",
      mode    => 0755,
      source  => 'file:///modules/nginx/centos6.5.prod.localdomain.pem',
      }

     file {'/etc/pki/tls/certs/centos6.5.localdomain.key':
      ensure  => present,
      owner   => "root",
      group   => "root",
      mode    => 0755,
      source  => 'file:///modules/nginx/centos6.5.prod.localdomain.key',
      }
     
