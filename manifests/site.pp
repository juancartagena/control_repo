node default {
  file {'/root/README':
    ensure => file,
    content => 'This is a README by JCartagena',
    owner => 'root',
  }
  file {'/root/README':
    owner => 'root',
  }  
}