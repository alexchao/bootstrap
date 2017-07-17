__git_ps1()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " %s" "${b##refs/heads/}";
    fi
}
export PS1='\[\e[0;33m\]\t\[\e[0;39m\] \[\e[1;90m\]-\[\e[0;39m\] \[\e[1;34m\]\u\[\e[0;39m\]@\[\e[1;91m\]\h\[\e[0;39m\]:\[\e[0;90m\]\w\[\e[0;39m\]\[\e[1;35m\]$(__git_ps1 " %s")\[\e[0;39m\]
\[\e[1;90m\]>>\[\e[m\] '
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/alexchao/google-cloud-sdk/path.bash.inc' ]; then source '/Users/alexchao/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/alexchao/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/alexchao/google-cloud-sdk/completion.bash.inc'; fi

# MySQL
PATH="/usr/local/mysql/bin:${PATH}"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
PATH="$PATH:$HOME/.rvm/bin"

export TERM=xterm-256color
