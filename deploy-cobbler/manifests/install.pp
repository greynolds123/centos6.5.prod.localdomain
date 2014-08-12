<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
=======
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
>>>>>>> origin/master
class deploy-cobbler::install {
     package {  "cobbler":,        
         ensure  => install,
        }

     packages { "tftp":,
        ensure  => install,
     }

     packages { "rsync":,
        ensure  => install,
     }
     
     packages { "bind":,
        ensure  => install,
     }
     
     packages { "dhcp":,
        ensure  => install,
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master

    } 
=======
<<<<<<< HEAD
<<<<<<< HEAD
<<<<<<< HEAD

    } 
=======
=======
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======
class deploy-cobbler::present {
     package {  "cobbler":,        
         ensure  => present,
        }

     packages { "tftp":,
        ensure  => present,
     }

     packages { "rsync":,
        ensure  => present,
     }
     
     packages { "bind":,
        ensure  => present,
     }
     
     packages { "dhcp":,
        ensure  => present,
>>>>>>> de97c461b67f2d44779eaf61d0a3a1b8ff2a9e0f
     }
<<<<<<< HEAD
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
=======

    } 
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
=======
>>>>>>> b2ee718dd61d28cd8abb19d7056dfb7f81c4ec42
>>>>>>> 4cd73f9172b56ea1ed268e235245c13e64378eb0
<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> origin/master
=======

    } 
>>>>>>> 18b67f1e00c138b3dee73a70ce811be10d603371
<<<<<<< HEAD
=======
>>>>>>> f05b609dd85950d8c62f48b02534cb009fcf5c1b
=======
>>>>>>> origin/master
  }

    exec { "correct_authn":
      command  => "perl -pi -w -e 's/authn_denyall/authn_configfile/g' /etc/cobbler/modules.conf",
      path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
    exec { "correct_ip":
       command  => "perl -pi -w -e 's/127.0.0.1/192.168.128.130/g' /etc/cobbler/settings",
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
    exec { "correct_pxeboot":
       command  => "perl -pi -w -e 's/pxe_just_once: 0/pxe_just_once: 1/g' /etc/cobbler/settings",       
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
    exec { "correct_annamon":
       command  => "perl -pi -w -e 's/anamon_enable: 0/ anamon_enable: 1/g' /etc/cobbler/settings",
       path     => "/bin:/usr/bin:/sbin:/usr/sbin"
     }
