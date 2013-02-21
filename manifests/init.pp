define dock_item ($item, $action = "add", $position = "unset")
{
    
        if ($position == "unset"){
            exec {'dockutil':
                command => "/tmp/dockutil/scripts/dockutil --${action} \"${item}\"",
                require => Repository['Dockutil'],
            }
        }else{
            exec {'dockutil':
                command => "/tmp/dockutil/scripts/dockutil --${action} \"${item}\" --position ${position}",
                equire => Repository['Dockutil'],
            }
        }
        
        
}

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