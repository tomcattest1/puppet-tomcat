class tomcat::config() {
  file { '/etc/tomcat/tomcat.conf':
    ensure => 'file',
    owner  => 'tomcat',
    group  => 'tomcat',
    mode   => '0755',
    source => 'puppet:///modules/tomcat/tomcat.conf',
  }
}
