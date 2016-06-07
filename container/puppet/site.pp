hiera_include('classes', [])

# Install yeoman (requires npm from nodejs)
class { 'yeoman':
    require => Class['nodejs'];
}

# Install the angular generator
yeoman::generator { 'generator-angular': 
    require => Class['nodejs'];
}

# Create an app user, so we don't have to run
# commands as root
user { 'app':
    ensure      => 'present',
    home        => '/home/app',
    shell       =>'/bin/bash',
    managehome  => true,
}

