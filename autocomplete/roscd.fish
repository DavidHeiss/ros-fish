set package (rospack list-names) log
complete -c "roscd" -f
complete -c "roscd" -n "not __fish_seen_subcommand_from $package" -a "$package"
complete -c "roscd" -l "help"