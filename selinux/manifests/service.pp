class selinux::service {
     service { 'auditd':
     ensure     => running,
     hasstatus  => true,
     hasrestart => true,
     enable     => true,
     require    => Class['selinux::config'],
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
     require    => Class['selinux::sebool']
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
     require    => Class['selinux::sebool']
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
=======
     require    => Class['selinux::sebool']
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
=======
     require    => Class['selinux::sebool']
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
=======
     require    => Class['selinux::sebool']
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
   }
 }