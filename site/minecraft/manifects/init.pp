class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file { '/opt/minecraft/server.jar'
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar'
  }
#  file { '/opt/jdk-17_linux-x64_bin.rpm'
#  ensure => file,
#  source => 'https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm'
#  }
  package { 'java':
    ensure => present ,
    source => 'https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm'
  }
  file { '/opt/minecraft/eula.txt'
    ensure => file,
    content => 'eula=true'
  }
  file { '/etc/systemd/system/minecraft.service'
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service'
  }
}
