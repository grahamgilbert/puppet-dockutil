class dockutil{
  repository { 'Dockutil':
    ensure => '4bbdbc95519b70ac00391c4ebe34592fd351f491',
    source => 'kcrawford/dockutil',
    path   => "${boxen::config::cachedir}/dockutil",
  }
}
