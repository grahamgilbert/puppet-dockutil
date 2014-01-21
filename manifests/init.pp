class dockutil{
    repository { 'Dockutil':
        source => 'kcrawford/dockutil',
        path   => "${boxen::config::cachedir}/dockutil",
    }
    exec {"dockutil kill dock":
      command =>  "killall cfprefsd;sleep 3;killall Dock",
      refreshonly => true,
    }
}
