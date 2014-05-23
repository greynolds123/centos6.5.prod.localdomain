class nginx {
    include nginx::config, nginx::deploy_nginx, nginx::install, nginx::params, nginx::service, nginx::ssl, nginx::virtual, nginx::web
    }
