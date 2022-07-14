function rosls -d "Lists contents of a package directory."
    echo "source /opt/ros/noetic/setup.bash && rosls" $argv | bash
end