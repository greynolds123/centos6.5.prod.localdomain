class ssh::install {
    if $operatingsystems == '/[Fedora|Redhat|Centos]/' {
    package { 'openssh':
      ensure  => present,
    }
   }

    elsif $operatingsystems == '/[Ubuntu|Debian]/' {
     package { 'ssh':
      ensure  => present,
    }
   }
}
