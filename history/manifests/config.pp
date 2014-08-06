class history::config {
    file { "/etc/profile.d/history.sh":
    ensure  => present,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
    owner   => "root",
    group   => "root",
=======
    owner   => root,
    group   => root,
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
    owner   => "root",
    group   => "root",
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
    owner   => root,
    group   => root,
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
    mode    =>  0644,
    source  => 'puppet:///modules/history/history.sh',
     }
    }


exec { "history_edit":
      command  => "/bin/sh /etc/profile.d/history.sh",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin",
      onlyif   => "grep -c /etc/profile.d/ /etc/profile.d/history.sh && exit 1 || exit 0"
      }
