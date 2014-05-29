class users::exim {
    tag("email")
    service { "exim":
     ensure  => running,
     enable  => true,
   }
  }
     
