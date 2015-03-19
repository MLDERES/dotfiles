# always run inside tmux
function fish_greeting
    if begin; [ "$TERM" = "screen" ]; not set -q TMUX; end
        tmux; and exit
    end
end

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme robbyrussell

# All built-in plugins can be found at ~/.oh-my-fish/plugins/
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Enable plugins by adding their name separated by a space to the line below.
set fish_plugins theme evernote

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

function reboot
    sudo reboot
end

set -gx COMPOSER_HOME $HOME/.composer
set -gx PATH $PATH $COMPOSER_HOME/vendor/bin
