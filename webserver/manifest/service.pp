class webserver::nginx::service {
        service { 'nginx':
        ensure     => present,
        hasstatus  => true,
        hasrestart => true,
        enable     => true,
        require    => Class['webserver::nginx::config'],
        require    => Class['webserver::nginx::ssl']
         }
        }
