# puppet file to configure the ssh config file
file {'/etc/ssh/ssh_config':
  ensure => present,
  content => "
Host school
    HostName 100.25.140.95
    User ubuntu
    IdentityFile ~/.ssh/school
    PasswordAuthentication no
    PubkeyAuthentication yes
    IdentitiesOnly yes
",
  owner => 'green',
  group => 'green',
  mode => '0600',
}
