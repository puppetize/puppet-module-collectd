#
class collectd::plugin::curl (
  $ensure   = present,
  $interval = undef,
  $pages    = { },
) {
  collectd::plugin {'curl':
    ensure   => $ensure,
    interval => $interval,
  }
  $defaults = {
    'ensure' => $ensure
  }
  create_resources(collectd::plugin::curl::page, $pages, $defaults)
}
