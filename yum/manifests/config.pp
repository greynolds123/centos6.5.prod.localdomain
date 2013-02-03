class yum::config {
  file { '/etc/yum.repos.d/':
    ensure  => true,
    owner   => "root",
    group   => "root",
    mode    => "0644",
    source  => templates('yum/templates/yum.repos.erb'),
    requirw => Class['yum::install'],
    notify  => Class['yum::service'],
    }
  }
