set dir (dirname (status -f))
source $dir/functions/rosls.fish
source $dir/functions/roscd.fish
source $dir/functions/__fish_print_ros_packages.fish
source $dir/functions/__fish_get_last_subcommand.fish
source $dir/functions/__fish_last_subcommand_in.fish
source $dir/functions/__fish_ros_list_executables.fish
source $dir/functions/__fish_limit_subcommands.fish
source $dir/functions/__fish_string_util.fish

source $dir/autocomplete/rosls.fish
source $dir/autocomplete/roscd.fish
source $dir/autocomplete/catkin_make.fish
source $dir/autocomplete/catkin_make_isolated.fish
source $dir/autocomplete/rosdep.fish
source $dir/autocomplete/rospack.fish
source $dir/autocomplete/rosrun.fish