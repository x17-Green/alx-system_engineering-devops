# Using strance to debug an Apache server returning a 500 error.

class apache_fix {
  file { '/var/www/html':
    ensure  => 'directory',
    owner   => 'www-data',
    group   => 'www-data',
    recurse => true,
  }
}
