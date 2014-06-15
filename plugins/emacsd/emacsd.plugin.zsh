# emacsd - Emacs 24 Daemon/Client Plugin
#
# This plugin will automatically start emacs in daemon mode and create an alias
# to connect to it via emacsclient.

function _zsh_emacsd_plugin_start()
{
    # Only start the daemon once.
    if [[ `pidof emacs` = "" ]]; then
        \emacs --daemon
    fi
}

if [[ "$ZSH_EMACSD_AUTOSTART" = "true" ]]; then
    _zsh_emacsd_plugin_start
fi

alias emacsd=_zsh_emacsd_plugin_start
alias emacs="emacsclient -t"
alias ec="emacsclient -t"
