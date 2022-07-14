set dir (dirname (status -f))
source $dir/functions/rosls.fish
source $dir/functions/roscd.fish
source $dir/functions/__fish_print_ros_packages.fish

source $dir/autocomplete/rosls.fish
source $dir/autocomplete/roscd.fish
source $dir/autocomplete/catkin_make.fish
source $dir/autocomplete/catkin_make_isolated.fish
source $dir/autocomplete/rosdep.fish
source $dir/autocomplete/rospack.fish