define selinux_bool($bool) {
      exec { "/usr/sbin/setsebool -P $name=$bool":
      unless => "/usr/sbin/getsebool $name | sestatus -b |grep $bool$",
      cwd => '/',
    }
 }
    selinux_bool { allow_httpd_mod_auth_pam:
      bool => on,
 }

