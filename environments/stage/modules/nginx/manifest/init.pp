class nginx {
    include nginx::config, nginx::install, nginx::params, nginx::service, nginx::ssl, nginx::web
    }
