class apache::service {
     service { "httpd":
       ensure       => running,
       hasrestatus  => true,
       hasrestart   => true,
       enable       => true,
       require      => Class['apache::config'],
       }
    }
