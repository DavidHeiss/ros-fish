function roscd -d "Jump to target package."
    if count $argv > /dev/null; and test $argv = "--help"
        echo "source /opt/ros/noetic/setup.bash && roscd" $argv | bash
        return 0
    else
        set dir (echo "source /opt/ros/noetic/setup.bash && roscd" $argv "&& pwd" | bash)
        if test $status -eq 0
            cd $dir
            return 0
        else
            echo $dir
            return 1
        end
    end
end