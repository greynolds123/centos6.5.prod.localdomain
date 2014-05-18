class users::exim {
    tag("email")
    service { "exim4":
     ensure  => running,
     enable  => true,
   }
  }
     
