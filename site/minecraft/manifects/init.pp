class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file { '/opt/minecraft/server.jar':
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar',
  }
  file { '/tmp/jdk-17_linux-x64_bin.rpm':
    ensure => file,
    source => 'https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm',
  }
#x  package { 'java':
#x    ensure => present ,
#x    source => 'https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm',
#x  }
  package { 'java':
    provider => 'rpm',
    ensure   => present ,
    source   => '/tmp/jdk-17_linux-x64_bin.rpm',
  }
file { '/opt/minecraft/eula.txt':
    ensure  => file,
    content => 'eula=true',
  }
  file { '/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service {'minecraft':
    ensure => running,
    enable => true,
  }
}
