class dockutil{
    repository { 'Dockutil':
        source => 'kcrawford/dockutil',
        path   => "/tmp/dockutil",
        require	=> File["/tmp/dockutil"],
    }

    if !defined(File["/tmp/dockutil"]){
        file {"/tmp/dockutil":
            ensure => directory,
        }
    }
}