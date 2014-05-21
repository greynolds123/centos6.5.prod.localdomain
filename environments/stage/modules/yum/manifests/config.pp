class yum::config {   
   file { '/etc/yum.conf/':
    ensure  => true,
    owner   => "root",
    group   => "root",
    mode    => "0644",
    source  => templates('yum/templates/yum.conf.erb'),
    require => Class['yum::install'],
    notify  => Class['yum::service']
    }
   }
