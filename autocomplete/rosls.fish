set package (rospack list-names)
complete -c "rosls" -f
complete -c "rosls" -n "not __fish_seen_subcommand_from $package" -a "$package" 
complete -c "rosls" -l "help"