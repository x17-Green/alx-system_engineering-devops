# a puppet manifest to kill a process

exec { 'install-flask':
  command => 'pip3 install flask==2.1.0',
}

exec { 'erify-flask-version':
  command => '/usr/local/bin/flask --version',
  require => Exec['install-flask'],
}
