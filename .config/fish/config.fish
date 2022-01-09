setenv EDITOR nvim
if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
	fortune | cowsay | lolcat -f
end
