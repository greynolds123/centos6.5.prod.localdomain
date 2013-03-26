class history::config {
    file { "/etc/profile.d/":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => "0644",
    source  => template('/etc/profile.d/history.sh'),
    }
   }
exec { "history_edit":
      command  => "sh /etc/profile.d/history.sh",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin"
      }
