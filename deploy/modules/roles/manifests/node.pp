class roles::node {
  class{"repos": } ->
  class{"puppet": } ->
  class{"nagios": } ->
  class{"mcollective": } ->
  class{"apache": } ->
  class{"varnish": } ->
  class{"motd": } ->
  Class[$name]
  include php
}
