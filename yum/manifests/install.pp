class yum::install {
<<<<<<< HEAD
   package { "yum":
    ensure  =>  install,
    path    => '/etc/yum',
    owner   => "root",
    group   => "root",
    mode    => "0644",
    require => Class['yum::params'],
    }
  }
   package { "yum-utils":
=======
   package { 'yum':
    ensure  =>  install,
    path    => '/etc/yum',
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    require => Class['yum::params'],
    }
  }
   package { 'yum-utils':
>>>>>>> 33066c155e36d3920b86b49b3b83bf3d859f07c8
    ensure  => present,
    }
