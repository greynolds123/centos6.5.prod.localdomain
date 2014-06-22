class ssh::install {
    if $operatingsystems == '/[Fedora|Redhat|Centos]/' {
    package { 'openssh':
      ensure  => lastest,
    }
   }

    elsif $operatingsystems == '/[Ubuntu|Debian]/' {
     package { 'ssh':
      ensure  => latest,
    }
   }
}
