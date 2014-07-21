class bind::define-bind ( $ip,  $domain) {
     file {"/etc/bind.conf":
       ensure  => file,
       owner   => "root",
       group   => "root",
       mode    => "0644",
       content => template('bind/templats/named.erb'),
       }
     }
       
