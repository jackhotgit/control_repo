class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.sxtc7fvm01':}
  dockeragent::node {'db.sxtc7fvm01':}
  dockeragent::node {'minetest.sxtc7fvm01':}
  host { 'web.sxtc7fvm01':
    ensure => present,
    ip     => '172.18.0.2',
  }
  host { 'db.sxtc7fvm01':
    ensure => present,
    ip     => '172.18.0.3',
  }
}
