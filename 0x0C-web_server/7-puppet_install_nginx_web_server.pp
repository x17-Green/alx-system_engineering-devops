# A puppet config file Install Nginx web server

# Install Nginx
package { 'nginx':
  ensure => installed,
}

# Configure Nginx to listen on port 80
file { '/etc/nginx/sites-available/default':
  content => "
server {
    listen 80 default_server;
    location / {
        return 200 'Hello World!';
    }
    location /redirect_me {
        return 301 https://github.com/x17-Green;
    }
}
",
  notify  => Service['nginx'],
}


# Enable and start Nginx service
service { 'nginx':
  ensure => running,
  enable => true,
}
