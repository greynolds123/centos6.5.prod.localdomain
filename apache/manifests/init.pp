class apache {
    include apache::config, apache::install, apache::params, apache::vhost-config, apache::service
    }
