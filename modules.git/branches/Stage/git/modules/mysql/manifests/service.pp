class mysql::service {
    service { "mysqld":
    ensure     => present,
    hasstatus  => true,
    hasrestart => true,
    enable     => true,
    require    => Class["mysql::config"]
    }
  }
