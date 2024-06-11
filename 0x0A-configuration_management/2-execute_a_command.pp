# a puppet manifest to kill a process

exec { 'kill killmenow':
  command => '/usr/bin/pkill killmenow',
  path    => '/bin/pkill',
}
