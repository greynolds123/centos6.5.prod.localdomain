class deploy_nginx {
    include deploy_nginx::config, deploy_nginx::install, deploy_nginx::params, deploy_nginx::service, deploy_nginx::ssl, deploy_nginx::virtual, deploy_nginx::web
    }
