class puppet::install {
     Package { 'puppet':
      ensure  => present,
     }
   }
