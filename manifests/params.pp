# Class:: keytab::params
#
#
class keytab::params {
  # platform-independent information
  $prefix = 'host'
  $body = $::fqdn
  $realm = 'EXAMPLE.COM'
  $puppetmaster = $settings::server
  # platform-specific information
  case $::osfamily {
    'Debian': {
      $pkg_kadmin = 'krb5-user'
      $pkg_openssl = 'openssl'
    }
    'RedHat': {
      $pkg_kadmin = 'krb5-workstation'
      $pkg_openssl = 'openssl'
    }
    default: {
      fail("Unable to manage keytabs on '${::kernel}' systems.")
    }
  }
} # Class:: keytab::params
