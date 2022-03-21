class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.sxtc7fvm01':}
  dockeragent::node {'db.sxtc7fvm01':}
}
