class selinux::service {
     service { 'auditd':
     ensure     => running,
     hasstatus  => true,
     hasrestart => true,
     enable     => true,
     require    => Class['selinux::config'],
<<<<<<< HEAD
=======
     require    => Class['selinux::sebool']
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
   }
 }
