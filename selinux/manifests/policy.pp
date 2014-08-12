class selinux::policy {
    file { "/etc/selinux/$title.te":
      owner   => "root",
      group   => "root",
      mode    => 0600,
      ensure  => present,
      content => $module ? {
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
      false   => template('selinux/$module/$title/$title.te'),
        default => template('selinux/$module/$title.te'),
=======
        false   => templates('selinux/templates/$module/$title/$title.te'),
        default => templates('selinux/templates/$module/$title.te'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        false   => templates('selinux/templates/$module/$title/$title.te'),
        default => templates('selinux/templates/$module/$title.te'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
        false   => templates('selinux/templates/$module/$title/$title.te'),
        default => templates('selinux/templates/$module/$title.te'),
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
      },
      require => File["/etc/selinux/targeted/policy"],
    }

    exec { "policy" :
      user        => "root",
      cwd         => "/etc/selinux/policy",
      command     => "yum update selinux",
      refreshonly => true,
      subscribe   => File["/etc/selinux/semanage.conf/$title.te"];
    }
  }
define state () {
    case $title {
      enforcing: {
        exec { "enable selinux on $hostname":
          user    => "root",
          command => "/usr/sbin/setenforce 1",
          unless  => "/usr/sbin/sestatus | /bin/egrep -q (Current mode:.*enforcing)",
        }
      }
      permissive: {
        exec { "disable selinux on $hostname":
          user    => "root",
          command => "/usr/sbin/setenforce 0",
          unless  => "/usr/sbin/sestatus | /bin/egrep -q (Current mode:.*permissive|SELinux.*disabled)";
        }
      }
    }
  }
