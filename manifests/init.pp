define dock_item ($action = "add", $item, $position)
{
    
        if ($position == undef){
            exec {'dockutil':
                command => "/tmp/dockutil/scripts/dockutil --${action} \"${item}\""
            }
        }else{
            exec {'dockutil':
                command => "/tmp/dockutil/scripts/dockutil --${action} \"${item}\" --position ${position}"
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