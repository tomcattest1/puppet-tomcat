class tomcat::service() {
  service { 'tomcat':
    ensure  => 'running',
    require => Package['tomcat'],
  }
}
