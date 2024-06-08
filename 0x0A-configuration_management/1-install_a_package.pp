# installing flask from pip3 using puppet

exec { 'install flask 2.1.0':
  command => 'pip3 install flask==2.1.0',
}
