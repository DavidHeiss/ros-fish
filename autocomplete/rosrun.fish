set package (rospack list-names)
complete -c "rosrun" -f
complete -c "rosrun" -l "prefix" -n "not __fish_seen_subcommand_from $package"
complete -c "rosrun" -l "debug" -n "not __fish_seen_subcommand_from $package"
complete -c "rosrun" -a "$package" -n "not __fish_seen_subcommand_from $package"
complete -c "rosrun" -a "(__fish_ros_list_executables (__fish_get_last_subcommand))" -n "__fish_seen_subcommand_from $package; and __fish_last_subcommand_in $package; and __fish_limit_subcommands 2"