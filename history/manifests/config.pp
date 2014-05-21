class history::config {
    file { "/etc/profile.d/":
    ensure            => present,
    owner             => root,
    group             => root,
    mode              => "0644",
    source            => template("~history/history.sh.erb"),
    }
   }


exec { "history_copy":
      command  => "/bin/cp  $source  /etc/profile.d/history.sh",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin",
      before   => Exec[history_edit],
      onlyif   => "/bin/grep -c /etc/profile.d/ /etc/profile.d/history.sh && exit 1 || exit 0"
      }

exec { "history_edit":
      command  => "sh /etc/profile.d/history.sh",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin",
      onlyif   => "grep -c /etc/profile.d/ /etc/profile.d/history.sh && exit 1 || exit 0"
      }
