class selinux::service {
     service { 'auditd':
     ensure     => running,
     hasstatus  => true,
     hasrestart => true,
     enable     => true,
     require    => Class['selinux::config'],
     require    => Class['selinux::sebool']
   }
 }
