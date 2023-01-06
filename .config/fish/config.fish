if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

set -gx TERM xterm-256color
set -g theme_short_path yes

# aliases

alias ls "exa"
alias ls "ls -p -G"
alias la "ls -A"
alias ll "ls -lha"
alias lla "ll -A"
alias bi "brew install"
alias py "python3"
alias si "sioyek"
alias op open
alias g git
alias ga "git add"
alias gm "git commit -m"
alias gl "git log"
alias gt "git status"
alias gb "git branch"
alias gd "git diff"
alias gs "git switch"
alias vi nvim
alias cd.. "cd .."
alias tnew "tmux new -s"
alias cl "clear"
alias md "mkdir"
alias gll "git log --graph --decorate --oneline --all"
alias glg "git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
set -x PATH /usr/bin $PATH
set -x PATH /bin $PATH
set -x PATH /usr/local/sbin $PATH

# set -x PATH $HOME/.cargo/bin $PATH
set HOMEBREW_NO_AUTO_UPDATE 1

set -gx PATH $PATH:/usr/local/bin
set -gx PATH $PATH:/opt/homebrew/bin
set -gx PATH $PATH:/opt/homebrew/sbin
set -gx PATH $PATH:/Users/pengyo/Library/Python/3.10/bin
set -gx PATH $PATH:/Users/pengyo/.cargo/bin
set -gx PATH $PATH:/opt/homebrew/opt/llvm/bin
set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"
set -x HOMEBREW_NO_AUTO_UPDATE 1
# set -x all_proxy socks5://127.0.0.1:7890
git config --global http.proxy socks5://127.0.0.1:7890
git config --global https.proxy socks5://127.0.0.1:7890
# autojump
[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish


# Functions
function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
        echo sudo $history[1]
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
starship init fish | source
