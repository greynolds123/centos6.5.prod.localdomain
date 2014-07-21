class users::exim {
     if $operatingsystems == '/[Fedora|Centos|Redhat]/' {
     tag("email")
     service { "exim":
     ensure  => running,
     enable  => true,
   }
  }
     if $operatingsystems == '/[Ubuntu|Debian]/' {
     tag("email")
     service { "exim4":
     ensure  => running,
     enable  => true,
  }
 }
}
