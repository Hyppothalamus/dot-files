setenv EDITOR nvim
setenv _JAVA_AWT_WM_NONREPARENTING 1
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.sdkman/bin
fish_add_path $HOME/.local/share/coursier/bin
if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
	fortune | cowsay | lolcat -f
	fish_add_path /home/kasper/go/bin
	fish_add_path /opt/protoc-grpc-web
    fish_add_path $HOME/.emacs.d/bin
end
fish_add_path /home/kasper/.spicetify
