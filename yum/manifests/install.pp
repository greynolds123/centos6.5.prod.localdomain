class yum::install {
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
    ensure  => install,
    }
