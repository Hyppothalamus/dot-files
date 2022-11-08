setenv EDITOR nvim
setenv _JAVA_AWT_WM_NONREPARENTING 1
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.sdkman/bin
fish_add_path $HOME/.local/share/coursier/bin
fish_add_path $HOME/go/bin
if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
    pokemon-colorscripts --no-title -r
	fish_add_path /opt/protoc-grpc-web
    fish_add_path $HOME/.emacs.d/bin
end
fish_add_path /home/kasper/.spicetify

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
starship init fish | source
