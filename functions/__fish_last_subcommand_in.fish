function __fish_last_subcommand_in
    set -l cmd (commandline -poc)
    if contains -- $cmd[-1] $argv
        return 0
    end
    return 1
end