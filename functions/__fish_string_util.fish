function __fish_string_util 
    set dir (dirname (status -f))
    python3 $dir/string_util.py $argv
end