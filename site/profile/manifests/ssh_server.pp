class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'ture',
  }
  ssh_authorized_key { 'root@sxtc7fvm01':
    ensure => 'present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDTbc66QwaW3k3w92Prj447UF5ogqlLnP7Mv9INXiFwSCfHPMrEdRvjQ6L0GW7C0BmalSfAl84skx5OurhgVtBQlENHYX9uZDZEiFy/4eF7K+VtLgsSzSmK2V1DxXiM3kT01dxxQcO5f0H0Yr5iBaU2Skew0+kae79i8Y5FxbcrL5No678nhqH0Xj1rZtkowAvaoEnzWbqNv/p2ROq7Tsperj0La67bBF48bpJT6cq7cJ90wZKBD5BkeyVaddYYGRAqsuWBDjXnKqbOE7FyhX6DOc7j+yQ0nTS0S947gbO0HYWAdEsnxHHKwHBzXqlDfCsFaKEh5TnIFzuXGbLoowBfGSi57Jg6+eXsgohpeV2pglJ17UyjMXbIjbcn1xZLe1tMunla1ELjRBggCaCEolvIlWVRJDqkEMnhLWPRBayd5F/7XbWKLlYNRUO4vYmknEapwBPrQ8YWpHcF7R2HtsyuaooVDQxXeYgFIWsLOUznqMVNnuDQeBZXQyp5DLkh9eGrGTRtlec6Bxf+C0vz/17e2ZkAguyqU84HC841j1IoiMevZTQqNpRc+uamUKr4Gxm0Xt3PTgn1GRu0z1VxnhpMO7PP3UcO9kzggV4EB5VyfLAq+OQvK6uXLX+/NaJep8esaLZ/LsOlAJQb2HwFTmjq+qwk+kTjqr23rCI1J2DvDw==',
  }
}
