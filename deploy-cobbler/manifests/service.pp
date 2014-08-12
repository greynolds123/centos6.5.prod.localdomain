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
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
     command  => "/bin/systemctl  enable cobblerd",
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
     command  => "/bin/systemctl  enable cobblerd",
=======
     command  => "/sbin/chkconfig --level 035 cobblerd on",
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
     command  => "/bin/systemctl  enable cobblerd",
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
     command  => "/sbin/chkconfig --level 035 cobblerd on",
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
<<<<<<< HEAD
=======
     command  => "/bin/systemctl  enable cobblerd",
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
=======
     command  => "/bin/systemctl  enable cobblerd",
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> origin/master
     path     => "/bin:/usr/sbin:/sbin:/usr/sbin",
     }
