class selinux::install {
   package { audit: ensure => installed }
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> origin/master
   file { "/etc/selinux/targeted/policy":
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => 0700,
  }


    file { "/etc/selinux/targeted/policy/policy.24":
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
=======
<<<<<<< HEAD
=======
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> origin/master
   file { "/etc/selinux/targeted":
    owner  => "root",
    group  => "root",
    mode   => 0700,
    type   => directory,
    ensure => directory;
  }
    file { "/etc/selinux/targeted/<% policy %>":
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> origin/master
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
     owner   => "root",
     group   => "root",
     mode    => 0755,
     ensure  => present,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
     content => 'puppet:///selinux/policy.24',
=======
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     content => 'puppet:///selinux/policy.24',
=======
     content => template('selinux/templates/<% policy %>'),
     require => File["/etc/selinux/semanage.conf"];
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
=======
     content => 'puppet:///selinux/policy.24',
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
     content => template('selinux/templates/<% policy %>'),
     require => File["/etc/selinux/semanage.conf"];
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/master
=======
     content => 'puppet:///selinux/policy.24',
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
     content => template('selinux/templates/<% policy %>'),
     require => File["/etc/selinux/semanage.conf"];
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
  }
}
