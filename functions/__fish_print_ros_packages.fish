function __fish_print_ros_packages
    set dir (dirname (status -f))
    python3 $dir/__fish_print_ros_packages.py $argv
end