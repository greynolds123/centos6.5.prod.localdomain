class ldap {
   include ldap::config, ldap::install, ldap::params, ldap::server, ldap::service, ldap::slapd, ldap::slapd-server, ldap::sudo-ldap
}
