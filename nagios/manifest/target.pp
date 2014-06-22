class target {
      nagios_host { $fqdn:
      ensure => present,
      alias => $hostname,
      address => $ipaddress,
      use => "generic-host",
      }

      nagios_hostextinfo { $fqdn:
      ensure => present,
      icon_image_alt => $operatingsystem,
      icon_image => "modules/$operatingsystem.png",
      statusmap_image => "base/$operatingsystem.gd2",
      }

      nagios_service { "check_ping_${hostname}":
      use => "check_ping",
      host_name => "$fqdn",
      }

      nagios_service { "check_users_${hostname}":
      use => "remote-nrpe-users",
      host_name => "$fqdn",
      }

      class target {
      nagios_host { $fqdn:
      ensure => present,
      alias => $hostname,
      address => $ipaddress,
      use => "generic-host",
      }

      nagios_hostextinfo { $fqdn:
      ensure => present,
      icon_image_alt => $operatingsystem,
      icon_image => "base/$operatingsystem.png",
      statusmap_image => "base/$operatingsystem.gd2",
      }

      nagios_service { "check_ping_${hostname}":
      use => "check_ping",
      host_name => "$fqdn",
      }

      nagios_service { "check_users_${hostname}":
      use => "remote-nrpe-users",
      host_name => "$fqdn",
      }

      nagios_service { "check_http_${hostname}":
      use => "check-http",
      host_name => "$fqdn",
      }
   
     nagios_service { "check_http_processes_${hostname}":
     use => "remote-nrpe-httpd-procs",
     host_name => "$fqdn",
     }

     nagios_service { "check_ssh_${hostname}":
     use => "check-ssh",
     host_name => "$fqdn",
       }
      }
     }
