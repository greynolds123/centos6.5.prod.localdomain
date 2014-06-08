class history::config {
    file { "/etc/profile.d/history.sh":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    =>  0644,
    source  => 'puppet:///modules/history/history.sh',
     }
    }


exec { "history_edit":
      command  => "/bin/sh /etc/profile.d/history.sh",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin",
      onlyif   => "grep -c /etc/profile.d/ /etc/profile.d/history.sh && exit 1 || exit 0"
      }
