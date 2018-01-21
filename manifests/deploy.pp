define tomcat::deploy(
  String $deploy_path  = $::tomcat::deploy_path,
  String $config_owner = $::tomcat::config_owner,
  String $config_group = $::tomcat::config_group,
  String $config_mode  = $::tomcat::config_mode,
  String $checksum     = $::tomcat::checksum,
  String $checksum_value, 
  String $deploy_url,
) {
  file { "${deploy_path}/${name}.war":
    ensure          => present,
    source          => $deploy_url,
    owner           => $config_owner,
    group           => $config_group,
    mode            => $config_mode,
    checksum        => $checksum,
    checksum_value  => $checksum_value,
    #notify          => Exec['purge_context'],
  }

  #exec { 'purge_context':
    # path        => ['/bin', '/usr/bin', '/usr/sbin'],
    #command     => "rm -rf ${deploy_path}/${name}.war",
    #refreshonly => true,
    #notify      => Service['tomcat_service'],
    #}
}
