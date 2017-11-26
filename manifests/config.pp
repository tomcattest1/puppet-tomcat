class tomcat::config(
 String $config_name     = $::tomcat::config_name,
 String $config_path     = $::tomcat::config_path,
 String $config_owner    = $tomcat::config_owner,
 String $config_group    = $::tomcat::group,
 String $config_mode     = $::tomcat::mode,
) {
  file { 'tomcat_config_file':
    ensure => $config_ensure,
    name   => $config_name,
    path   => $config_path,
    owner  => $owner,
    group  => $group,
    mode   => $mode,
    source => 'puppet:///modules/tomcat/tomcat.conf',
  }
}
