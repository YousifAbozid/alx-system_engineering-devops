package { 'python3-pip':  # Ensure pip3 is installed
  ensure => installed,
}

exec { 'install_flask':  # Execute the command to install Flask 2.1.0
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/bin',
  unless  => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',  # Ensure Flask version is 2.1.0
}
