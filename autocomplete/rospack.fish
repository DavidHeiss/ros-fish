set command "help cflags-only-I cflags-only-other depends depends-indent depends-manifests depends-msgsrv depends-on depends-on1 depends-why depends1 export find langs libs-only-L libs-only-l libs-only-other list list-duplicates list-names plugins profile rosdep rosdep0 vcs vcs0 rdeps deps deps deps deps deps1 rosdeps osdeps0"
set package (rospack list-names)

complete -c "rospack" -f

complete -c "rospack" -a "help" -n "not __fish_seen_subcommand_from $command"

complete -c "rospack" -a "cflags-only-I" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from cflags-only-I; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from cflags-only-I; and not __fish_seen_subcommand_from --deps-only" -l "deps-only"

complete -c "rospack" -a "cflags-only-other" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from cflags-only-other; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from cflags-only-other" -l "deps-only"

complete -c "rospack" -a "depends" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "deps" -n "not __fish_seen_subcommand_from $command" -d "alias for depends"
complete -c "rospack" -n "__fish_seen_subcommand_from depends" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from deps; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "depends-indent" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "deps-indent" -n "not __fish_seen_subcommand_from $command" -d "alias for depends-indent"
complete -c "rospack" -n "__fish_seen_subcommand_from depends-indent; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from deps-indent; and not __fish_seen_subcommand_from " -a "$package"

complete -c "rospack" -a "depends-manifests" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "deps-manifests" -n "not __fish_seen_subcommand_from $command" -d "alias for depends-manifests"
complete -c "rospack" -n "__fish_seen_subcommand_from depends-manifests; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from deps-manifests; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "depends-msgsrv" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "deps-msgsrv" -n "not __fish_seen_subcommand_from $command" -d "alias for depends-msgsrv"
complete -c "rospack" -n "__fish_seen_subcommand_from depends-msgsrv; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from deps-msgsrv; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "depends-on" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from depends-on; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "depends-on1" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from depends-on1; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "depends-why" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "deps-why" -n "not __fish_seen_subcommand_from $command" -d "alias for depends-why"
complete -c "rospack" -n "__fish_seen_subcommand_from depends-why; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from deps-why; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "depends1" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "deps1" -n "not __fish_seen_subcommand_from $command" -d "alias for depends1"
complete -c "rospack" -n "__fish_seen_subcommand_from depends1; and not __fish_seen_subcommand_from $package" -a "$package" 
complete -c "rospack" -n "__fish_seen_subcommand_from deps1; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "export" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from export" -l "deps-only"
complete -c "rospack" -n "__fish_seen_subcommand_from export" -l "lang"
complete -c "rospack" -n "__fish_seen_subcommand_from export" -l "attrib"
complete -c "rospack" -n "__fish_seen_subcommand_from export; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "find" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from find; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "langs" -n "not __fish_seen_subcommand_from $command"

complete -c "rospack" -a "libs-only-L" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from libs-only-L" -l "deps-only"
complete -c "rospack" -n "__fish_seen_subcommand_from libs-only-L; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "libs-only-l" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from libs-only-l" -l "deps-only"
complete -c "rospack" -n "__fish_seen_subcommand_from libs-only-l; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "libs-only-other" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from libs-only-other" -l "deps-only"

complete -c "rospack" -a "list-only-other" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from list-only-other; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "list-duplicates" -n "not __fish_seen_subcommand_from $command"

complete -c "rospack" -a "list-names" -n "not __fish_seen_subcommand_from $command"

complete -c "rospack" -a "plugins" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from plugins" -l "attrib"
complete -c "rospack" -n "__fish_seen_subcommand_from plugins" -l "top"
complete -c "rospack" -n "__fish_seen_subcommand_from plugins; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "profile" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from profile" -l "length"
complete -c "rospack" -n "__fish_seen_subcommand_from profile" -l "zombie-only"

complete -c "rospack" -a "rosdep" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "rosdeps" -n "not __fish_seen_subcommand_from $command" -d "alias for rosdep"
complete -c "rospack" -n "__fish_seen_subcommand_from rosdep; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from rosdeps; and not __fish_seen_subcommand_from $package" -a "$package" 

complete -c "rospack" -a "rosdep0" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -a "rosdeps0" -n "not __fish_seen_subcommand_from $command" -d "alias for rosdep0"
complete -c "rospack" -n "__fish_seen_subcommand_from rosdep0; and not __fish_seen_subcommand_from $package" -a "$package"
complete -c "rospack" -n "__fish_seen_subcommand_from rosdeps0; and not __fish_seen_subcommand_from $package" -a "$package" 

complete -c "rospack" -a "vcs" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from vcs; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -a "vcs0" -n "not __fish_seen_subcommand_from $command"
complete -c "rospack" -n "__fish_seen_subcommand_from vcs0; and not __fish_seen_subcommand_from $package" -a "$package"

complete -c "rospack" -s "q" -d "Quiets error reports."