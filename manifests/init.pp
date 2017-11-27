# Class: tomcat
# ===========================
#
# Full description of class tomcat here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'tomcat':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name <author@domain.com>
#
# Copyright
# ---------
#
# Copyright 2017 Your name here, unless otherwise noted.
#
class tomcat(
  Array $packages            = $::tomcat::params::packages,
  String $package_ensure     = $::tomcat::params::package_ensure,
  String $config_ensure      = $::tomcat::params::config_ensure,
  String $config_name        = $::tomcat::params::config_name,
  String $config_path        = $::tomcat::params::config_path,
  String $config_owner       = $::tomcat::params::config_owner,
  String $config_group       = $::tomcat::params::config_group,
  String $config_mode        = $::tomcat::params::config_mode,
  String $service_name       = $::tomcat::params::service_name,
  String $service_state      = $::tomcat::params::service_state,
  Boolean $service_enable    = $::tomcat::params::service_enable,
  Integer $tomcat_cfg_loaded = $::tomcat::params::tomcat_cfg_loaded,
  String $tomcats_base       = $::tomcat::params::tomcats_base,
  String $java_home          = $::tomcat::params::java_home,
  String $xms                = $::tomcat::params::xms,
  String $xmx                = $::tomcat::params::xmx,
  String $catalina_base      = $::tomcat::params::catalina_base,
  String $catalina_home      = $::tomcat::params::catalina_home,
  String $jasper_home        = $::tomcat::params::jasper_home,
  String $catalina_tmpdir    = $::tomcat::params::catalina_tmpdir,
  String $tomcat_user        = $::tomcat::params::tomcat_user,
  Boolean $security_manager  = $::tomcat::params::security_manager,
  Integer $shutdown_wait     = $::tomcat::params::shutdown_wait,
  Boolean $shutdown_verbose  = $::tomcat::params::shutdown_verbose,
  String $catalina_pid       = $::tomcat::params::catalina_pid,
) inherits ::tomcat::params {
  class { '::tomcat::install': }
  -> class { '::tomcat::config': }
  ~> class { '::tomcat::service': }
}
