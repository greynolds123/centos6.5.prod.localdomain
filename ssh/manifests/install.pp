class ssh::install {
    if $operatingsystems == '/[Centos|Fedora|Redhat|SLES]/' {
    package { 'openssh':
      ensure  => present,
    }
 }
}
    if $operatingsystems == '/[Ubuntu|Debian]/' {
    package { 'ssh':
      ensure  => present,
    }
 }

