class selinux::policy {
<<<<<<< HEAD
    file { "/etc/selinux/$title.te":
      owner   => "root",
      group   => "root",
      mode    => 0600,
=======
    file { "/etc/selinux/${title}.te":
      owner   => 'root',
      group   => 'root',
      mode    => '0600',
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
      ensure  => present,
      content => $module ? {
        false   => templates('selinux/templates/$module/$title/$title.te'),
        default => templates('selinux/templates/$module/$title.te'),
      },
<<<<<<< HEAD
      require => File["/etc/selinux/targeted/policy"],
    }

    exec { "policy" :
      user        => "root",
      cwd         => "/etc/selinux/policy",
      command     => "yum update selinux",
      refreshonly => true,
      subscribe   => File["/etc/selinux/semanage.conf/$title.te"];
=======
      require => File['/etc/selinux/targeted/policy'],
    }

    exec { 'policy' :
      user        => 'root',
      cwd         => '/etc/selinux/policy',
      command     => 'yum update selinux',
      refreshonly => true,
      subscribe   => File["/etc/selinux/semanage.conf/${title}.te"];
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
    }
  }
define state () {
    case $title {
      enforcing: {
<<<<<<< HEAD
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
=======
        exec { "enable selinux on ${hostname}":
          user    => 'root',
          command => '/usr/sbin/setenforce 1',
          unless  => '/usr/sbin/sestatus | /bin/egrep -q (Current mode:.*enforcing)',
        }
      }
      permissive: {
        exec { "disable selinux on ${hostname}":
          user    => 'root',
          command => '/usr/sbin/setenforce 0',
          unless  => '/usr/sbin/sestatus | /bin/egrep -q (Current mode:.*permissive|SELinux.*disabled)';
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
        }
      }
    }
  }
