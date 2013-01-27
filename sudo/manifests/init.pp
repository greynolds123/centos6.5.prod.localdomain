class sudo { 
     include sudo::config, sudo::params
}

case operatingsystem ? {
     'redhat' { include redhat' }
     'fedora' { include fedora' }
}

$owner = $operatingsystem ? {
     /(redhat|fedora)/ => '/sbin:/usr/sbin:/bin:/usr/sbin',
     default           => undef,
}

$system = $operatingsystem ? {
     /(redhat|fedora)/ => "our system is $1",
     default           => "our system is unknow"
}
    
