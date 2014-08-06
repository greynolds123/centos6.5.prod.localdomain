class selinux::install {
   package { audit: ensure => installed }
<<<<<<< HEAD
   file { "/etc/selinux/targeted/policy":
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => 0700,
  }


    file { "/etc/selinux/targeted/policy/policy.24":
=======
   file { "/etc/selinux/targeted":
    owner  => "root",
    group  => "root",
    mode   => 0700,
    type   => directory,
    ensure => directory;
  }
    file { "/etc/selinux/targeted/<% policy %>":
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
     owner   => "root",
     group   => "root",
     mode    => 0755,
     ensure  => present,
<<<<<<< HEAD
     content => 'puppet:///selinux/policy.24',
=======
     content => template('selinux/templates/<% policy %>'),
     require => File["/etc/selinux/semanage.conf"];
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
  }
}
