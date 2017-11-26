class tomcat::install(
  Array $packages        = $::tomcat::packages,
  String $package_ensure = $::tomcat::package_ensure,
) {
  package { $packages:
    ensure => $package_ensure,
  }
}
