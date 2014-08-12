class ssh::install {
    if $operatingsystems == '/[Fedora|Redhat|Centos|SLES]/' {
    package { 'openssh':
      ensure  => latest,
    }
   }

    elsif $operatingsystems == '/[Ubuntu|Debian]/' {
     package { 'ssh':
      ensure  => latest,
    }
   }
}
