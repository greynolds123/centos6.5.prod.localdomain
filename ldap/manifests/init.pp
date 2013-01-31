class ldap {
   include ldap::config, ldap::install, ldap::params, ldap::server, ldap::service, ldap::sudo-ldap
}
