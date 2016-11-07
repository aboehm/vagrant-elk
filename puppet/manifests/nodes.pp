# Node configuration

node elk.example.org {
  class { 'elastic':
    use_elasticsearch => true,
    use_kibana        => true,
    use_logstash      => true,
  }

  # disable puppet services
  service { ['mcollective', 'puppet']:
    enable => false,
    ensure => stopped,
  }
}

# vi: set ft=puppet tabstop=2 shiftwidth=2 expandtab :
