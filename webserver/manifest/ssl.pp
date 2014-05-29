class webserver::nginx::ssl {
    file {'/etc/nginx/default.conf/ssl.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.conf',
     #source  => template('webserver/ssl.conf.erb'),
      }
     }

    file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.pem':
     ensure  => present,
     owner   => 'root',
     group   => 'root',        
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.pem',
     #source  => template('webserver/ssl.pem.erb'),
      }


     file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.key':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.key',
     #source  => template('webserver/ssl.key.erb'),
      }
  

