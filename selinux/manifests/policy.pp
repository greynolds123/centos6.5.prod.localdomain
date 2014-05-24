class selinux::policy {
    file { "/etc/selinux/$title.te":
      owner   => "root",
      group   => "root",
      mode    => 0600,
      ensure  => present,
      content => $modules ? {
        false   => templates('selinux/templates/$modules/$title/$title.te'),
        default => templates('selinux/templates/$modules/$title.te'),
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
