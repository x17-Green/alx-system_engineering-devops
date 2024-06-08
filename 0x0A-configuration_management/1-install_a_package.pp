#installing flask from pip3 using puppet

exec { 'install Flask 2.1.0':
  command => 'pip3 install Flask==2.1.0',
  unless  => 'pip3 freeze | grep Flask==2.1.0',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
}

exec { 'install Werkzeug 2.1.1':
  command => 'pip3 install Werkzeug==2.1.1',
  unless  => 'pip3 freeze | grep Werkzeug==2.1.1',
  path    => ['/bin', '/usr/bin', '/sbin', '/usr/sbin'],
  require => Exec['install Flask 2.1.0'], # Ensure Flask is installed first
}
