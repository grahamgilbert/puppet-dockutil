class dockutil (
  $version = undef
) {

  unless $version {
    $version = '4bbdbc95519b70ac00391c4ebe34592fd351f491'
  }

  repository { 'Dockutil':
    ensure => $version,
    source => 'kcrawford/dockutil',
    path   => "${boxen::config::cachedir}/dockutil",
  }
}
