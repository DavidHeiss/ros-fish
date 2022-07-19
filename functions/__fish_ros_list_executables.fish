function __fish_ros_list_executables
    set pkgdir (catkin_find --first-only --without-underlays --libexec $argv[-1] 2> /dev/null) 
    if test $status -eq 0
        find -L $pkgdir -executable -type f -print0 | tr '\000' '\n' | sed -e "s/.*\/\(.*\)/\1/g" | sort
    end
end