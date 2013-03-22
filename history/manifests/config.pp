class history::config {
    file { "/etc/profile.d/":
    ensure  => present,
    owner   => root,
    group   => root,
    mode    => "0644",
    source  => "puppet:///modules/history/templates/history.sh.erb"
    }
   }
