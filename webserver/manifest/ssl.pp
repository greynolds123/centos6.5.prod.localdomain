class webserver::nginx::ssl {
    file {'/etc/nginx/default.conf/ssl.conf':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
<<<<<<< HEAD
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.conf',
     #source  => template('webserver/ssl.conf.erb'),
     require => Class['webserver::nginx::service']
=======
     mode    => 0644,
     source  => 'puppet:///modules/webserver/ssl.conf',
     #source  => template('webserver/ssl.conf.erb'),
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
      }
     }

    file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.pem':
     ensure  => present,
     owner   => 'root',
     group   => 'root',        
<<<<<<< HEAD
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.pem',
     #source  => template('webserver/ssl.pem.erb'),
     require => Class['webserver::nginx::service']
=======
     mode    => 0644,
     source  => 'puppet:///modules/webserver/ssl.pem',
     #source  => template('webserver/ssl.pem.erb'),
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
      }


     file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.key':
     ensure  => present,
     owner   => 'root',
     group   => 'root',
<<<<<<< HEAD
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.key',
     #source  => template('webserver/ssl.key.erb'),
     require => Class['webserver::nginx::service']
=======
     mode    => 0644,
     source  => 'puppet:///modules/webserver/ssl.key',
     #source  => template('webserver/ssl.key.erb'),
>>>>>>> 5f545de760de109de51569a8ad80c5747f91d1bc
      }
  

