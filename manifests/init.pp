class dockutil (
  $version = undef
) {

  if $version {
    $rel = $version
  } else {
    $rel = '4bbdbc95519b70ac00391c4ebe34592fd351f491'
  }

  repository { 'Dockutil':
    ensure => $rel,
    source => 'kcrawford/dockutil',
    path   => "${boxen::config::cachedir}/dockutil",
  }
}
