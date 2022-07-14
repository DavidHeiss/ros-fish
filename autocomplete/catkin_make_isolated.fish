complete -c "catkin_make_isolated" -f
complete -c "catkin_make_isolated" -s "h" -l "help" -n "not __fish_seen_subcommand_from -h --help" -d "show help message and exit"
complete -c "catkin_make_isolated" -s "C" -l "directory" -F -n "not __fish_seen_subcommand_from -C --directory" -d "The base path of the workspace (default '.')"
complete -c "catkin_make_isolated" -l "source" -F -n "not __fish_seen_subcommand_from --source" -d "The path to the source space (default 'workspace_base/src')"
complete -c "catkin_make_isolated" -l "build" -F -n "not __fish_seen_subcommand_from --build" -d "The path to the build space (default 'workspace_base/build')"
complete -c "catkin_make_isolated" -l "devel" -F -n "not __fish_seen_subcommand_from --devel" -d "Sets the target devel space (default 'workspace_base/devel_isolated')"
complete -c "catkin_make_isolated" -l "merge" -n "not __fish_seen_subcommand_from --merge" -d "Build each catkin package into a common devel space."
complete -c "catkin_make_isolated" -l "install-space" -F -n "not __fish_seen_subcommand_from --install-space" -d "Sets the target install space (default 'workspace_base/install_isolated')"
complete -c "catkin_make_isolated" -l "use-ninja" -n "not __fish_seen_subcommand_from --use-ninja --use-nmake --use-gmake" -d "Use 'ninja' instead of 'make'"
complete -c "catkin_make_isolated" -l "use-nmake" -n "not __fish_seen_subcommand_from --use-ninja --use-nmake --use-gmake" -d "Use 'nmake' instead of 'make'"
complete -c "catkin_make_isolated" -l "use-gmake" -n "not __fish_seen_subcommand_from --use-ninja --use-nmake --use-gmake" -d "Use 'gmake' instead of 'make'"
complete -c "catkin_make_isolated" -l "install" -n "not __fish_seen_subcommand_from --install" -d "Causes each catkin package to be installed."
complete -c "catkin_make_isolated" -l "force-cmake" -n "not __fish_seen_subcommand_from --force-cmake" -d "Runs cmake explicitly for each catkin package."
complete -c "catkin_make_isolated" -l "no-color" -n "not __fish_seen_subcommand_from --no-color" -d "Disables colored output (only for catkin_make and CMake)"
complete -c "catkin_make_isolated" -l "pkg" -a "(__fish_print_ros_packages)" -d "Process only specific packages (only after catkin_make_isolated has been invoked before with the same install flag)"
complete -c "catkin_make_isolated" -l "ignore-pkg" -a "(__fish_print_ros_packages)" -d "Ignore specific packages."
complete -c "catkin_make_isolated" -l "from-pkg" -a "(__fish_print_ros_packages)" -n "not __fish_seen_subcommand_from --from-pkg" -d "Restart catkin_make_isolated at the given package continuing from there (do not change CMake arguments, add/move/remove packages or toggle the install flag when using this option since this may result in an inconsistent workspace state)."
complete -c "catkin_make_isolated" -l "only-pkg-with-deps" -a "(__fish_print_ros_packages)" -n "not __fish_seen_subcommand_from only-pkg-with-deps" -d "Only consider the specific packages and their recursive dependencies and ignore all other packages in the workspace (only works together with --merge or --install)"
complete -c "catkin_make_isolated" -s "q" -l "quiet" -n "not __fish_seen_subcommand_from -q --quiet" -d "Suppresses the cmake and make output until an error occurs."
complete -c "catkin_make_isolated" -l "cmake-args" -d "Arbitrary arguments which are passes to CMake. It must be passed after other arguments since it collects all following options."
complete -c "catkin_make_isolated" -l "make-args" -d "Arbitrary arguments which are passes to make.It must be passed after other arguments since it collects all following options."
complete -c "catkin_make_isolated" -l "catkin-make-args" -d "Arbitrary arguments which are passes to make but only for catkin packages.It must be passed after other arguments since it collects all following options."
complete -c "catkin_make_isolated" -l "override-build-tool-check" -n "not __fish_seen_subcommand_from override-build-tool-check" -d "use to override failure due to using differnt build tools on the same workspace."