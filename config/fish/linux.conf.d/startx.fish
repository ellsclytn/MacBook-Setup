if status is-login
    if test -z "$DISPLAY" -a -z "$INITIAL_SETUP" -a "$XDG_VTNR" = 1
        # exec sway -- -keeptty
        # exec startx -- -keeptty
    end
end
