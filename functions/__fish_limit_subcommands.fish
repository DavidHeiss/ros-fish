function __fish_limit_subcommands
    if test (count $argv) -eq 1
        set -l cmds (commandline -poc)
        set -l subcommands
        for cmd in $cmds
            if not __fish_string_util --startswith (__fish_string_util --escape=$cmd) "\-\-"
                set -a subcommands $cmd
            end
        end
        if test (count $subcommands) -eq $argv
            return 0
        end
    end
    return 1
end