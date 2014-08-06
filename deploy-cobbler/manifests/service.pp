class deploy-cobbler::service {
     service { "clobberd":
       ensure     => running,
       hasstatus  => true,
       hasrestart => true,
       enable     => true,
       reauire    => Class[deploy-cobbler::config],
       }
     }
exec { "chk_cobblerd":
<<<<<<< HEAD
<<<<<<< HEAD
     command  => "/bin/systemctl  enable cobblerd",
=======
     command  => "/sbin/chkconfig --level 035 cobblerd on",
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
     command  => "/bin/systemctl  enable cobblerd",
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
     path     => "/bin:/usr/sbin:/sbin:/usr/sbin",
     }
