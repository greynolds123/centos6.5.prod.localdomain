class webserver::nginx::ssl {
    file {'/etc/nginx/default.conf/ssl.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.conf',
     #source  => template('webserver/ssl.conf.erb'),
     require => Class['webserver::nginx::service']
      }
     }

<<<<<<< HEAD
    file {'/etc/pki/tls/certs/centos7.prod.localdomain.pem':
=======
    file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.pem':
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
     ensure  => present,
     owner   => 'root',
     group   => 'root',        
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.pem',
     #source  => template('webserver/ssl.pem.erb'),
     require => Class['webserver::nginx::service']
      }


<<<<<<< HEAD
     file {'/etc/pki/tls/certs/centos7.prod.localdomain.key':
=======
     file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.key':
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
     ensure  => present,
     owner   => 'root',
     group   => 'root',
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.key',
     #source  => template('webserver/ssl.key.erb'),
     require => Class['webserver::nginx::service']
      }
  

