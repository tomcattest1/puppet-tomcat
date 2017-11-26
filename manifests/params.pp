class tomcat::params {
 $packages       = ['tomcat', 'tomcat-webapps']
 $package_ensure = 'installed'
 $config_ensure  = 'file'
 $config_name    = 'tomcat.conf'
 $config_path    = '/etc/tomcat/tomcat.conf'
 $config_owner   = 'tomcat'
 $config_group   = 'tomcat'
 $config_mode    = '0755'
 $service_name   = 'tomcat'
 $service_state  = 'running'
 $service_enable = true
}
