class tomcat::config(
 String $config_name     = $::tomcat::config_name,
 String $config_path     = $::tomcat::config_path,
 String $config_owner    = $::tomcat::config_owner,
 String $config_group    = $::tomcat::config_group,
 String $config_mode     = $::tomcat::config_mode,
) {
  file { 'tomcat_config_file':
    ensure  => $config_ensure,
    name    => $config_name,
    path    => $config_path,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template('tomcat/tomcat.conf.erb'),
  }
}
