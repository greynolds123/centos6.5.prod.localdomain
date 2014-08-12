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
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
    file {'/etc/pki/tls/certs/centos7.prod.localdomain.pem':
=======
    file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.pem':
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
<<<<<<< HEAD
=======
    file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.pem':
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
    file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.pem':
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
     ensure  => present,
     owner   => 'root',
     group   => 'root',        
     mode    => 0755,
     source  => 'puppet:///modules/webserver/ssl.pem',
     #source  => template('webserver/ssl.pem.erb'),
     require => Class['webserver::nginx::service']
      }


<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
     file {'/etc/pki/tls/certs/centos7.prod.localdomain.key':
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     file {'/etc/pki/tls/certs/centos7.prod.localdomain.key':
=======
     file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.key':
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
=======
     file {'/etc/pki/tls/certs/centos7.prod.localdomain.key':
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
     file {'/etc/pki/tls/certs/centos6.5.prod.localdomain.key':
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
=======
     file {'/etc/pki/tls/certs/centos7.prod.localdomain.key':
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
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
  

