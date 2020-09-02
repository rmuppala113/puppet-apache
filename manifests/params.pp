# @summary
#   Operating system-related variables (and others)  
# @example
#   include apache::params
class apache::params {
  $install_ensure = 'present'
  
  case $::osfamily {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian': {
      $install_name = 'apache2' 
    }
   }
}
