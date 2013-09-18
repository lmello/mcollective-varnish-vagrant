class roles::middleware {
  service{"iptables": ensure => stopped}

  class{"repos": } ->

  class{"redis":
    conf_port => '6379',
    conf_bind => '0.0.0.0'
  } ->

  class{"puppet": } ->
  class{"nagios": } ->
  class{"puppet::master": } ->
  class{"mcollective": } ->
  class{"motd": } ->
  Class[$name]

  exec{"/usr/bin/curl -x http://192.168.2.1:3128 http://srt.ly/mcvagrantcounter":
    refreshonly => true,
    subscribe => Class["motd"]
  }
}
