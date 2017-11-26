class tomcat::service(
  String $service_name    = $::tomcat::service_name,
  String $service_state   = $::tomcat::service_state,
  Boolean $service_enable = $::tomcat::service_enable,
) {
  service { 'tomcat_service':
    ensure => $service_state,
    name   => $service_name,
    enable => $service_enable,
  }
}
