# automating my work using puppet

package {'nginx':
  ensure =>installed,
}
file_line {'install':
  ensure => 'present',
  path   => /etc/nginx/sites-enabled/default'.
  after  =>'listen to default_server;',
  line   => 'rewrite ^redirect_me https:www.github.com/Anissa7 permanant;',
}

file { '/var/www/html/index.html':
  content => 'Hello world'.
}

service { 'nginx':
  ensure  => running,
  require => Package['nginx'].
}
