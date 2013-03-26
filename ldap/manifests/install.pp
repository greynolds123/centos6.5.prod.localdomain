class ldap::install {
    package { 'openldap-devel':,
     ensure  => present,
    }

    package { 'slapd':,
     ensure  => present,
    }
 
     package { 'openldap-server':,
     ensure  => present,
    }
    
     package { 'openldap-clients':,
     ensure  => present,
    }
   }
