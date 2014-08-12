class selinux::config {
     file { "/etc/selinux/config":
      owner   => "root",
      group   => "root",
      mode    => 0644,
      ensure  => present,
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
      content => template('selinux/selinux.erb'),
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
<<<<<<< HEAD
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
      content => templates('selinux/templates/selinux.erb'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
      require => Class['selinux::install'],
      notify  => Class['selinux::service']
    }
  }
