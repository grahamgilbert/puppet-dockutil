class dockutil{
    repository { 'Dockutil':
        source => 'kcrawford/dockutil',
        path   => "${boxen::config::cachedir}/dockutil",
        require	=> File["/tmp/dockutil"],
    }
}