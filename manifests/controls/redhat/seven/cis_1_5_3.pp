class demo_cis::controls::redhat::seven::cis_1_5_3 (
  $enable = true
){
  if $enable == true {
    file_line {'cis_1_5_3':
      path => '/etc/sysctl.conf',
      line => 'kernel.randomize_va_space = 2',
    }
  }

}

