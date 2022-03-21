node default {
}
node 'sxtc7fvm01' {
  include role::master_server
}

node /%web/ {
  incldue role::app_server
}

node /%db/ {
  incldue role::db_server
}
