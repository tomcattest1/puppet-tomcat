class tomcat::params {
 $packages          = ['tomcat', 'tomcat-webapps']
 $package_ensure    = 'installed'
 $config_ensure     = 'file'
 $config_name       = 'tomcat.conf'
 $config_path       = '/etc/tomcat/tomcat.conf'
 $config_owner      = 'tomcat'
 $config_group      = 'tomcat'
 $config_mode       = '0755'
 $service_name      = 'tomcat'
 $service_state     = 'running'
 $service_enable    = true
 $catalina_pid      = '/var/run/tomcat.pid'
 $tomcat_cfg_loaded = 1
 $tomcats_base      = '/var/lib/tomcats/'
 $java_home         = '/usr/lib/jvm/jre'
 $xms               = '64m'
 $xmx               = '128m'
 $catalina_base     = '/usr/share/tomcat'
 $catalina_home     = '/usr/share/tomcat'
 $jasper_home       = '/usr/share/tomcat'
 $catalina_tmpdir   = '/var/cache/tomcat/temp'
 $tomcat_user       = 'tomcat'
 $security_manager  = false
 $shutdown_wait     = 30
 $shutdown_verbose  = false
 $deploy_path       = '/var/lib/tomcat/webapps'
 $checksum          = 'md5'
 $port              = 8080
}
