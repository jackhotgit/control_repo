node default {
}
node 'sxtc7fvm01' {
  include role::master_server
  file { '/root/README':
    ensure  => file,
    content => "Welcome to ${fqdn}\n",
  }
}
node /^minetest/ {
  include role::minecraft_server
}
node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
