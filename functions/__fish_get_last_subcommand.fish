function __fish_get_last_subcommand
    set -l cmd (commandline -poc)
    echo $cmd[-1]
end
