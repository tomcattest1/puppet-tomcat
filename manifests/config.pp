class tomcat::config(
 String $config_ensure      = $::tomcat::config_ensure,
 String $config_name        = $::tomcat::config_name,
 String $config_path        = $::tomcat::config_path,
 String $config_owner       = $::tomcat::config_owner,
 String $config_group       = $::tomcat::config_group,
 String $config_mode        = $::tomcat::config_mode,
 Integer $tomcat_cfg_loaded = $::tomcat::tomcat_cfg_loaded,
 String $tomcats_base       = $::tomcat::tomcats_base,
 String $java_home          = $::tomcat::java_home,
 String $xms                = $::tomcat::xms,
 String $xmx                = $::tomcat::xmx,
 String $catalina_base      = $::tomcat::catalina_base,
 String $catalina_home      = $::tomcat::catalina_home,
 String $jasper_home        = $::tomcat::jasper_home,
 String $catalina_tmpdir    = $::tomcat::catalina_tmpdir,
 String $tomcat_user        = $::tomcat::tomcat_user,
 Boolean $security_manager  = $::tomcat::security_manager,
 Integer $shutdown_wait     = $::tomcat::shutdown_wait,
 Boolean $shutdown_verbose  = $::tomcat::shutdown_verbose,
 String $catalina_pid       = $::tomcat::catalina_pid,
 Integer $port              = $::tomcat::port,
) {
  file { 'tomcat_config_file':
    ensure  => $config_ensure,
    name    => $config_name,
    path    => $config_path,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template("${module_name}/tomcat.conf.erb"),
    notify  => Service['tomcat_service'],
  }

  file { '/etc/tomcat/server.xml':
    ensure  => $config_ensure,
    owner   => $config_owner,
    group   => $config_group,
    mode    => $config_mode,
    content => template("${module_name}/server.xml.erb"),
    notify  => Service['tomcat_service'],
  }
}
